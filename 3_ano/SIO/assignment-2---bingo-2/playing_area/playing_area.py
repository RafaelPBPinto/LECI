import json
import sys
import logging
import time
import socket
import os
from cryptography.hazmat.primitives import serialization
from cryptography.exceptions import InvalidSignature
from cryptography.hazmat.primitives.asymmetric import rsa,utils
from hashlib import sha256
from termcolor import colored
import random
import string
from cryptography.hazmat.primitives.asymmetric.rsa import RSAPrivateKey

logging.basicConfig(filename='playingArea.log', format='%(message)s', encoding='utf-8', level=logging.INFO)
sys.path.append('../')

from common import protocol as p
from common import crypto
from common.authentication import verify_signature_auth
from player.player_info import PlayerInfo

class PlayingArea:
    def __init__(self, sock : socket) -> None:
        self.sock : socket = sock
        self.players : list[PlayerInfo] = []
        self.player_shuffle_stack : list = []
        self.caller : PlayerInfo = None
        self.game_status : int = 0
        self.n_players : int = None
        self.private_key : RSAPrivateKey = crypto.gen_rsa_assymmetric_keys()
        self.opened : bool = True
        self.pending_auth : dict = {}
        open('playingArea.log', 'w').close() #reset log file

    def msg_handler(self, msg, p_socket):
        rcv = json.loads(msg.decode())
        msg_id = rcv['msg_id']
        if 'data' in rcv: 
            data = rcv['data']
            #ids para assinar: 1,2,4,5
            #print("\n\n\n\n\n"+json.dumps(rcv)+"\n\n\n\n\n")
            if msg_id in [1,2,3,4,5,6,11,7]:
                for player in self.players:
                    if player.seq == rcv['seq']:
                        try:
                            crypto.verify_signature(player.publick_key, json.dumps(data), rcv['sig'])
                        except InvalidSignature:
                            p.error_l(2)
                            print(colored(f"CAUGHT CHEATER, {player.seq} signature invalid, will not be considered to score ",'red'))
                            self.echo_broadcast(json.loads(p.create_cheater_msg("p", player.seq, self.private_key)))
                        
        if msg_id == 0:
            self.new_connection_handler(rcv, p_socket)

        elif msg_id == 2: #game status update
            self.game_status = data['status']
            self.echo_broadcast(rcv)

        elif msg_id == 3: #new player card
            self.echo_broadcast(rcv, e=rcv['seq'])
            
        elif msg_id == 4: #deck shuffle
            self.player_shuffle(rcv, e=rcv['seq'])

        elif msg_id == 5:
            self.echo_broadcast(rcv, e=rcv['seq'])
            if rcv['seq'] == 0:
                if data['winner']:
                    print(colored("--- Final scoreboard ---", 'green'))
                    i = 1
                    prev_score = 0
                    for d in data['winner']:
                        print(colored(f"{i} ({d[1]} steps) - {next((x.nick for x in self.players if x.seq == d[0]), None)} ({d[0]})", 'green'))
                        if d[1]>prev_score: i+=1
                        else: prev_score = d[1]
                    print(colored("------------------------", 'green'))
                else:
                    print(colored("The winner couldn't be agreed on", 'red'))
                self.opened = False
        elif msg_id == 6: #new player card
            self.echo_broadcast(rcv, e=rcv['seq'])
        elif msg_id == 7:
            self.echo_broadcast(rcv, e=rcv['seq'])
            if data['cheater'] == 0:
                print(colored("Game terminated because of not trustworthy caller","red"))
                self.sock.close()
                sys.exit(-1)  
        elif msg_id == 11: #request
            self.request_handler(data, p_socket)

    def new_connection_handler(self, data, p_socket): #function to be changed to real authentication
        
        if 'solution' not in data: #envio do challenge
            if (self.caller and len(self.players) - 1 == self.n_players) or (not self.caller and len(self.players)==self.n_players and data['user_type'] == 1):
                p.send_msg(p_socket, p.create_new_player_msg(-2, data['nick']))
            elif data['user_type'] not in [0,1]: #invalid request
                p.send_msg(p_socket, p.create_new_player_msg(-1, data['nick']))
            else:
                challenge = ''.join(random.choices(string.ascii_uppercase + string.ascii_lowercase, k=16))
                auth_id = data['nick']+str(random.randbytes(5))
                self.pending_auth[auth_id] = challenge
                p.send_msg(p_socket, p.create_new_player_msg(0, data['nick'], challenge=challenge, auth_id=auth_id, p_key=self.private_key.public_key().public_bytes(encoding=serialization.Encoding.PEM,
                                                    format=serialization.PublicFormat.SubjectPublicKeyInfo).decode('ascii')))
        else: #verificacao da solucao do challenge e terminacao da autenticacao
            challenge = self.pending_auth[data['auth_id']] #challenge antereriormente dado ao user
            certificate = data['cert']
            solution = data['solution'] 
            if not verify_signature_auth(challenge, solution, certificate): #teste da solucao
                p.send_msg(p_socket, p.create_new_player_msg(-1, data['nick']))
            elif data['user_type'] == 0 and not self.caller: #caller
                self.caller = PlayerInfo(p_socket, 0, data['nick'], serialization.load_pem_public_key(data['p_key'].encode('ascii')))
                self.players.append(self.caller)
                lst = [u.sock for u in self.players]
                print(colored("Caller entered the game", "yellow"))
                p.broadcast_msg( lst, p.create_new_player_msg(0, data['nick'], n_players=self.n_players))
            elif data['user_type'] == 1 and not self.game_status: #player
                seq = len(self.players) if self.caller else len(self.players) + 1
                self.players.append(PlayerInfo(p_socket, seq, data['nick'], p_key=serialization.load_pem_public_key(data['p_key'].encode('ascii'))))
                lst = [u.sock for u in self.players]
                p.broadcast_msg(lst, p.create_new_player_msg(seq, data['nick'], p_key=data['p_key']))
                print(colored(f"{data['nick']} entered the game - {seq}/{self.n_players}", "yellow"))
            else: #invalid
                p.send_msg(p_socket, p.create_new_player_msg(-1, data['nick']))
            self.pending_auth.pop(data['auth_id']) #retirar autenticacao pendente
        
        

    def request_handler(self, data, p_socket):
        if data['request'] == "players_list":
            lst = [u.to_dic() for u in self.players]
            p.send_msg(p_socket, p.create_request_response_msg(lst, "players_list", self.private_key))
        elif data['request'] == "log":
            with open('playingArea.log', 'r') as f:
                log = f.read()
                p.send_msg(p_socket, p.create_request_response_msg(log, "log", self.private_key))


    def echo_broadcast(self, data, e=None):
        PlayingArea.log(data)
        lst = [u.sock for u in self.players if u.seq != e]
        if 'data' in data:
            d = data['data']
            new_sig = crypto.signature_rsa(self.private_key,json.dumps(d))
        data['sig'] = new_sig
        p.broadcast_msg(lst, json.dumps(data))
    
    def player_shuffle(self, data, e=None): #para envio de baralho 1 a 1 para players irem baralhando
        PlayingArea.log(data)
        if(e == self.caller.seq): #tem de construir a queue de players primeiro
            for u in self.players:
                if u.seq != e:
                    self.player_shuffle_stack.append(u)
        if 'data' in data:
            d = data['data']
            new_sig = crypto.signature_rsa(self.private_key,json.dumps(d))
        
        data['sig'] = new_sig
        
        self.player_shuffle_queue(data)

    def player_shuffle_queue(self,data):
        if(len(self.player_shuffle_stack) == 0):
            lst = [u.sock for u in self.players if u.seq != data["seq"]]
            p.broadcast_msg(lst, json.dumps(data))
            return

        p.broadcast_msg([self.player_shuffle_stack[0].sock], json.dumps(data))
        self.player_shuffle_stack.pop(0)
    


    @staticmethod
    def log(data: dict):
        try:
            with open('playingArea.log', 'r') as f:
                try: 
                    f.seek(-2, os.SEEK_END)
                    while f.read(1) != b'\n':
                        f.seek(-2, os.SEEK_CUR)
                except OSError:
                    f.seek(0) 
                lhash = sha256(f.readline().encode()).hexdigest()
        except IOError:
            lhash = None
        logging.info(f"{data['seq']} , {time.strftime('%H:%M:%S:%MS')} , {lhash} , {data['data']} , {data['sig']}")

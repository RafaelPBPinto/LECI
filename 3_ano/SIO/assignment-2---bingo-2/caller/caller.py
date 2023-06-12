import json
import select
import random
import time
import socket
import os
import sys

from hashlib import sha256
from cryptography.hazmat.primitives.asymmetric.rsa import RSAPrivateKey, RSAPublicKey
from cryptography.hazmat.primitives import serialization,hashes
from cryptography.exceptions import InvalidSignature
from termcolor import colored
from common import protocol as p
from common import utils, crypto
from player_info import PlayerInfoLite

class Caller:
    def __init__(self, seq : int, nick : str, sock : socket, priv_key : RSAPrivateKey, pa_p_key : str) -> None:
        self.sock : socket = sock
        self.seq : int = seq
        self.nick = nick
        self.symmetric_key : bytes = os.urandom(32) #symetric key for deck encryption
        self.iv : bytes = os.urandom(crypto.CBC_IV_SIZE)
        self.private_key : RSAPrivateKey = priv_key #instance of RSAPrivateKey, self.private_key.public_key() to get public key
        self.playing_area_p_key : RSAPublicKey = serialization.load_pem_public_key(pa_p_key.encode('ascii')) 
        self.players : dict[int, PlayerInfoLite] = {}
        self.flags : dict = {'started': False, 'leave_after': False} #more flags can be added if needed
        self.n : int = None
        self.n_players : int = None
        self.card_checks_list : dict = {}
        self.determined_winner : int = None
        self.results : dict = {}
        self.runing : bool = True 
        self.players_simetric = {}
        self.players_simetric[seq] : dict = {'key': self.symmetric_key,'iv': self.iv}
        self.deck = []
        self.order = []
        self.isDecrypted = False
        self.disqualified = []
    def run(self):
        """Main loop"""
        print("---- Game settings -----")
        while 1:
            try:
                self.n= int(input("N: "))
                break
            except Exception:
                print("Input iválido")
                continue
        
        self.request_players_lst()
        while self.runing:
            ready = select.select ([self.sock], [], [])[0]
            if ready:
                self.msg_handler(p.recv_msg(self.sock))


    def msg_handler(self, msg):
        """Handles new messages"""
        rcv = json.loads(msg.decode())
        if 'data' in rcv: 
            data = rcv['data']
            try:
                crypto.verify_signature(self.playing_area_p_key, json.dumps(data), rcv['sig'])
            except InvalidSignature:
                p.error_l(2)
                self.sock.close()
                sys.exit()
        msg_id = rcv['msg_id']

        if msg_id == 1: #new player
            self.new_player_handler(rcv)
        elif msg_id == 2: #game status
            self.flags['started'] = data['status']
            self.n = data['n']
            print(colored("Deck exchange has started", 'green'))
            deck = self.create_deck()
            p.send_msg(self.sock, p.create_deck_msg(self.seq, deck, [0], self.private_key))
        elif msg_id ==3: #player card
            if rcv['seq'] in self.card_checks_list and (not self.flags['started'] or not utils.validate_card(data['card'], self.n)):
                utils.error(self.sock, 'c', f"Player with seq={data['seq']} is a cheater")
            self.card_checks_list[rcv['seq']] = data['card']
            self.players[rcv['seq']].card = data['card']
            print(colored(f"{self.players[rcv['seq']].nick}({self.players[rcv['seq']].seq}) card is {data['card']}", 'yellow'))
        elif msg_id == 4: # shuffle chegou ao fim entre players
            self.deck = data['deck']
            self.order = data['touched_by']
            p.send_msg(self.sock, p.create_key_exchange_msg(self.seq, self.symmetric_key.hex(),self.iv.hex(),self.private_key))

        elif msg_id == 5: #winner
           
            winner_list_hash = sha256(str(data['winner']).encode()).hexdigest()
            
            self.results[rcv['seq']] = winner_list_hash
            if len(self.results) == self.n_players: #all the players have computed results
                
                self.deck = self.decrypt_deck()
                wCaller = [[v.seq, v.score] for v in self.winner()]
                winner_caller_hash = sha256(str(wCaller).encode()).hexdigest()
                for play in self.results:
                    if self.results[play] != winner_caller_hash:
                        print(colored(f"PLAYER {play} IS CHEATER","red"))
                        p.send_msg(self.sock, p.create_cheater_msg(self.seq, play, self.private_key))
                        self.disqualified.append(play)
                
                wCallerAux = []
                if len(wCaller) > 0:
                    for i in range(0,len(wCaller)):
                        if wCaller[i][0] not in self.disqualified: #se player ja tinha sido desqualificado ex:assinaturas, nao pode ganhar
                            wCallerAux.append(wCaller[i])


                p.send_msg(self.sock, p.create_winner_msg(self.seq, wCallerAux, self.private_key))
                self.show_final_menu()
        elif msg_id == 6:
            self.players_simetric[rcv['seq']] = {'key': bytes.fromhex(data['key']),'iv': bytes.fromhex(data['iv'])}
        
        elif msg_id == 7:
            if data['cheater'] == self.seq:
                print(colored(f"I got caught cheating and everyone left", 'red'))
                self.show_final_menu()
            else:
                print(colored(f"Player {self.players[data['cheater']].nick} caught cheating, and is disqualified", 'yellow'))
                self.disqualified.append(data['cheater'])
                if len(set(self.disqualified)) == self.n_players:
                    p.send_msg(self.sock, p.create_winner_msg(self.seq, [], self.private_key))
                    self.show_final_menu()


        elif msg_id == 12: #request response
            #mensagem tem de ser tb assinada
            self.request_answer_handler(data)

    def new_player_handler(self, data):
        """Store new player info"""
        if data['seq'] not in self.players and data['seq'] != 0:
            self.players[data['seq']] = PlayerInfoLite(data['seq'], data['nick'], serialization.load_pem_public_key(data['p_key'].encode('ascii')))
            if len(self.players) == self.n_players: #start game
                time.sleep(1) #to make sure everyone is at sync
                p.send_msg(self.sock, p.create_update_game_status_msg(1, self.private_key, n=self.n))
                print("--- game started ---")

    def request_players_lst(self): #get_user_list equivalent
        """Request players list to the playing area"""
        p.send_msg(self.sock, p.create_players_request_msg(self.seq, self.private_key))
        self.flags['p_lst_req'] = True
    
    def request_answer_handler(self, data):
        """Handles request answers"""
        if data['requested'] == "players_list":
            for player in data['data']:
                self.new_player_handler(player)
        elif data['requested'] == "log":
            print(colored("------- Playing area log ------", 'yellow'))
            print(data['data'])
            print(colored("--------- End of log  ---------", 'yellow'))
        if self.flags['leave_after']:
            self.runing = False
    
    def create_deck(self):
        """Create ramdom deck"""
        num = random.random()
        if num <= 0.1:
            print(colored("I AM CHEATING; creating deck with wrong size","red"))
            n = self.n -1
        else:
            n = self.n
        data = list(range(0, n))
        random.shuffle(data)
        encrypted_deck = []
        for d in data:
            encrypted_deck.append(crypto.CBC_encrypt(self.symmetric_key,self.iv,d))        
        return encrypted_deck

    def decrypt_deck(self):
        deck = []
        for val in self.deck:
            valor = val
            for i in self.order[::-1]:
                valor = crypto.CBC_decrypt(self.players_simetric[i]["key"],self.players_simetric[i]["iv"],valor)
            
            deck.append(int.from_bytes(valor, byteorder='big'))
        print("DECRIPTED DECK" ,deck, "deck order",self.order)
        return deck
    
    def winner(self):
        """Dicide the winner"""
        for p in self.players:
            player = self.players[p]
            count_right = 0
            counter = 0
            while count_right != len(player.card):
                if self.deck[counter] in player.card:
                    count_right += 1
                counter += 1
            player.score = counter
        return sorted(sorted([*self.players.values()], key=lambda n: n.seq), key=lambda n: n.score)

    def show_final_menu(self):
        while 1:
            try:
                choice = int(input("The game has ended, select one of the following options:\n1 - Request playing area log and leave\n2 - Leave\n-> "))
                break
            except Exception:
                print(colored("Invalid input", 'red'))
        
        if choice == 1:
            p.send_msg(self.sock, p.create_log_request_msg(self.seq, self.private_key))
            self.flags['leave_after'] = True
        elif choice == 2:
            self.runing = False
        else:
            self.show_final_menu()
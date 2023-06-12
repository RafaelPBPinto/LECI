import json
import select
import random
import socket
import sys
import os
from termcolor import colored
from cryptography.hazmat.primitives import serialization
from cryptography.exceptions import InvalidSignature
from cryptography.hazmat.primitives.asymmetric.rsa import RSAPrivateKey, RSAPublicKey

from common import protocol as p
from common import utils, crypto
from common.authentication import sign_message
from player_info import PlayerInfoLite


class Player:
    def __init__(self, seq : int, nick : str, socket : socket, priv_key : RSAPrivateKey, pa_p_key : RSAPublicKey) -> None:
        self.sock : socket = socket
        self.seq : int = seq
        self.nick : str = nick
        self.symmetric_key : bytes = os.urandom(32)
        self.iv : bytes = os.urandom(crypto.CBC_IV_SIZE)
        self.is_symmetric_key_share : bool = False
        self.shared_keys : dict = {}
        self.shared_keys[seq] : dict = {'key': self.symmetric_key,'iv': self.iv}
        self.private_key : RSAPrivateKey = priv_key #instance of RSAPrivateKey, self.private_key.public_key() to get public key
        self.playing_area_p_key : RSAPublicKey = serialization.load_pem_public_key(pa_p_key.encode('ascii')) 
        self.players : dict[int, PlayerInfoLite] = {self.seq: PlayerInfoLite(self.seq, self.nick, self.private_key.public_key())}
        self.flags : dict = {'started': False, 'deck_touch': False, 'leave_after': False} #more flags can be added if needed
        self.card : list = []
        self.n : int = None
        self.runing : bool = True
        self.deck : list = None
        self.deck_order : list = []
       

    def run(self):
        """Main loop"""
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
        elif msg_id == 2: #game status change
                self.flags['started'] = data['status']
                self.n = data['n']
        elif msg_id == 3: #other players cards
            if self.flags['started']:
                valid = utils.validate_card(data['card'], self.n)
                if valid:
                    self.players[rcv['seq']].card = data['card'] 
                    print(colored(f"{self.players[rcv['seq']].nick}({self.players[rcv['seq']].seq}) card is {data['card']}", 'yellow'))
                    if len([p for p in self.players if self.players[p].card]) == len(self.players)-1 and len(self.shared_keys) == len(self.players):
                        self.decide_winner()
                else: 
                    utils.error(self.sock,'c', f"Player with seq={rcv['seq']} is a cheater")
            else:
                utils.error(self.sock,'f', "Game has not started yet. Invalid message received.")
        elif msg_id == 4: #shuffle deck
            if self.flags['started']:
                shuffled_deck = data['deck']
                
                if len(shuffled_deck) != self.n:
                    p.send_msg(self.sock, p.create_cheater_msg(self.seq, 0, self.private_key))
                    print(colored(f"Caller cheated, not trustworthy aborting game, telling other players", 'red'))
                    self.show_final_menu()

                self.deck = shuffled_deck
                self.deck_order = data['touched_by']
                if not self.flags['deck_touch'] and data['touched_by'][len(data['touched_by'])-1] == self.seq - 1:
                    shuffled_deck = self.encrypt_deck(shuffled_deck)
                    random.shuffle(shuffled_deck)
                    data['touched_by'].append(self.seq)
                    self.deck = shuffled_deck

                    number = random.random()
                    if number <= 0.1:
                        print(colored("CHEATING, signature with different key!!!!","red"))
                        keyToSign = crypto.gen_rsa_assymmetric_keys()
                    else:
                        keyToSign = self.private_key


                    p.send_msg(self.sock, p.create_deck_msg(self.seq, shuffled_deck, data['touched_by'],keyToSign))
                    self.flags['deck_touch'] = True
                    self.deck_order = data['touched_by']
                    self.create_card()
                    print(colored(f"Your card is {self.card}", 'yellow'))
                    p.send_msg(self.sock, p.create_card_msg(self.seq, self.card, self.private_key))
                    self.players[self.seq].card = self.card
            else:
                utils.error(self.sock,'f', "Game has not started yet. Invalid message received.")
        elif msg_id == 5: #winner
            if rcv['seq']==0:
                if not data['winner']:
                    print(colored("The winner couldn't be agreed on", 'red'))
                elif data['winner'][0][0]==self.seq:
                    print(colored("You have won", 'green'))
                else:
                    print(colored(f"{self.players[data['winner'][0][0]].nick} ({data['winner'][0][0]}) has won", 'yellow'))
                self.show_final_menu()
        elif msg_id == 6:
            if not self.is_symmetric_key_share:
                p.send_msg(self.sock, p.create_key_exchange_msg(self.seq, self.symmetric_key.hex(),self.iv.hex(), self.private_key))
                self.is_symmetric_key_share = True
                
            self.shared_keys[rcv['seq']] = {'key': bytes.fromhex(data['key']),'iv': bytes.fromhex(data['iv'])} #guarda todas as chaves dos outros
            
            if len(self.shared_keys) == len(self.players) and len([p for p in self.players if self.players[p].card]) == len(self.players)-1: #quando recebe ultima chave de todas
                print("deck order" ,self.deck_order)
                self.dicide_winner()
            

        elif msg_id == 7:
            if data['cheater'] != 0:
                if(data["cheater"] == self.seq):

                    if(rcv['seq'] == "p"): #se for a meio do jogo tem de esperar
                        print(colored(f"You have been disqualified for cheating, wait till the end of the game", 'red'))
                    else:
                        print(colored(f"You have been disqualified for cheating", 'red'))
                        self.show_final_menu()
                else:
                    print(colored(f"Player {self.players[data['cheater']].nick} caught cheating, and is disqualified", 'yellow'))
                    #self.players.pop(data['cheater'])
            else:
                print(colored(f"Caller cheated, not trustworthy aborting game", 'red'))
                self.show_final_menu()

        elif msg_id == 12: #request response
            self.request_answer_handler(data)
            self.flags['p_lst_req'] = False

    def new_player_handler(self, data):
        """Store new player info"""
        if data['seq'] not in self.players:
            self.players[data['seq']] = PlayerInfoLite(data['seq'], data['nick'], serialization.load_pem_public_key(data['p_key'].encode('ascii')))

    def request_players_lst(self): #get_user_list equivalent
        """Request players list to the playing area"""
        p.send_msg(self.sock, p.create_players_request_msg(self.seq, self.private_key))
    
    def encrypt_deck(self,deck):
        encrypted_deck = []
        for d in deck:
            encrypted_deck.append(crypto.CBC_encrypt(self.symmetric_key,self.iv,d))
        return encrypted_deck

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
    
    def create_card(self):
        """Create ramdom card"""
        for i in range(int(self.n/4)):
            while 1:
                n = random.randrange(0,self.n)
                if n not in self.card:
                    self.card.append(n)
                    break
    
    def dicide_winner(self):
        w = [[v.seq, v.score] for v in self.winner()]
        number = random.random()
        if number <= 0.1:
            print(colored("CHEATING, inverting the winner!!!!","red"))
            w = list(reversed(w))
        p.send_msg(self.sock, p.create_winner_msg(self.seq, w, self.private_key))

    def winner(self):
        print("DECRIPTED DECK" ,self.decrypt_deck(), "deck order",self.deck_order)
        """Dicide the winner"""
        self.players.pop(0)
        for p in self.players:
            player = self.players[p]
            count_right = 0
            counter = 0
            while count_right != len(player.card):
                if self.decrypt_deck_number(counter) in player.card:
                    count_right += 1
                counter += 1
            player.score = counter
        return sorted(sorted([*self.players.values()], key=lambda n: n.seq), key=lambda n: n.score)

    def decrypt_deck_number(self,index):
        val = self.deck[index]
        for i in self.deck_order[::-1]:
            val = crypto.CBC_decrypt(self.shared_keys[i]["key"],self.shared_keys[i]["iv"],val)
        return int.from_bytes(val, byteorder='big')

    def decrypt_deck(self):
        deck = []
        for val in self.deck:
            valor = val
            for i in self.deck_order[::-1]:
                valor = crypto.CBC_decrypt(self.shared_keys[i]["key"],self.shared_keys[i]["iv"],valor)
            
            deck.append(int.from_bytes(valor, byteorder='big'))
        return deck

        

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

    @staticmethod
    def auth(sock, nick, p_key, t=1): #function to be changed to real authentication
        p.send_msg(sock, p.create_auth_msg(t, nick, p_key))
        
        #authentication with the playing area
        
        pa_p_key = None
        while 1:
            response = p.recv_msg(sock)
            if response:
                response = json.loads(response)
                if 'seq' in response:
                    if response['seq'] == -1:
                        print(colored("Authentication failed!", 'red'))
                        sock.close()
                        sys.exit()
                    elif response['seq'] == -2:
                        return -2
                    else: #autenticado com sucesso
                        if 'challenge' not in response:
                            print(colored("Authenticated!", 'green'))
                            return (response['seq'], response['n_players'], pa_p_key) if t==0 else (response['seq'], pa_p_key)
                if 'challenge' in response:
                    pa_p_key = response['pa_p_key']
                    signature, cert = sign_message(response['challenge']) # assinar challenge
                    p.send_msg(sock, p.create_auth_msg(t, nick, solution=signature, auth_id=response['auth_id'],
                                certificate=cert, p_key=p_key)) #responder ao challenge e dps continuar no loop à espera de confirmacao
        """
        # authentication with ptid
        while 1:
            response = p.recv_msg(sock)
            if response:

                response = json.loads(response)
                if response['seq'] == -1:
                    return None
                else:
                    print(colored("Authenticated!", 'green'))
                    return (response['seq'], response['n_players'], None) if t==0 else (response['seq'], None)       
        
        """

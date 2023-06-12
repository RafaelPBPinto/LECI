import struct
import json
from common import crypto
from termcolor import colored

##### Messages creation for the players/caller #######
def create_auth_msg(user_type, nickname, p_key, solution=None, auth_id=None, certificate=None):
    r = {"msg_id": 0, "user_type": user_type, "nick": nickname, 'p_key': p_key} if (not solution and not auth_id and not certificate) else {
        "msg_id": 0, "user_type": user_type, "nick": nickname, 'solution': solution, 'auth_id': auth_id, 'cert':certificate, 'p_key':p_key}
    return json.dumps(r)

def create_players_request_msg(seq, private_key):
    data = {"request": "players_list"}
    signature = crypto.signature_rsa(private_key,json.dumps(data))
    r = {"msg_id": 11, "seq": seq, "data": data, "sig": signature}
    return json.dumps(r)

def create_log_request_msg(seq, private_key):
    data = {"request": "log"}
    signature = crypto.signature_rsa(private_key,json.dumps(data))
    r = {"msg_id": 11, "seq": seq, 'data': data, 'sig': signature}
    return json.dumps(r)

def create_update_game_status_msg(status, private_key, n=None):
    if n:
        data = {"status":status,"n":n}
        signature = crypto.signature_rsa(private_key,json.dumps(data))
        r = {"msg_id": 2, "seq": 0, "data": data, "sig": signature}
    else:
        data = {"status":status}
        signature = crypto.signature_rsa(private_key,json.dumps(data))
        r = {"msg_id": 2, "seq": 0, "data": data, "sig": signature}
 
    return json.dumps(r)

def create_card_msg(seq, card, private_key):
    data = {"card": card}
    signature = crypto.signature_rsa(private_key,json.dumps(data))
    r = {"msg_id": 3, "seq": seq, "data": data, "sig": signature}
    return json.dumps(r)

def create_deck_msg(seq, deck, touched_by, private_key):
    data = {"deck": deck, "touched_by": touched_by}
    signature = crypto.signature_rsa(private_key,json.dumps(data))
    r = {"msg_id": 4, "seq": seq, "data": data, "sig": signature} #touched_by can be used to trace the sequence of players that shuffled the deck
    return json.dumps(r)                                                  #it always starts by '0' that is the seq of the caller

def create_winner_msg(seq, winner_seq, private_key): #o caso de empate ainda de tem de ser visto
    data = {"winner": winner_seq}
    signature = crypto.signature_rsa(private_key,json.dumps(data))
    r = {"msg_id": 5, "seq": seq, "data": data, "sig": signature}
    return json.dumps(r)

def create_key_exchange_msg(seq,key,iv,private_key):
    data = {"key":key,"iv":iv}
    signature = crypto.signature_rsa(private_key,json.dumps(data))
    r = {"msg_id": 6, "seq": seq, "data": data, "sig": signature}
    return json.dumps(r)

def create_cheater_msg(seq,seq_cheater,private_key):
    data = {"cheater":seq_cheater}
    signature = crypto.signature_rsa(private_key,json.dumps(data))
    r = {"msg_id": 7, "seq": seq, "data": data, "sig": signature}
    return json.dumps(r)


##### Message creation for the playing area #######
def create_new_player_msg(seq, nickname, auth_id=None, challenge=None, n_players=None, p_key=None):
    if challenge and auth_id:
        r = {"msg_id": 1,"seq": seq, "nick": nickname, 'challenge': challenge, 'auth_id': auth_id, 'pa_p_key': p_key} #envia challenge, id de auth e a public key da playing area
    elif not n_players:
        r = {"msg_id": 1,"seq": seq, "nick": nickname,'p_key': p_key}
    else:
        r = {"msg_id": 1,"seq": seq, "nick": nickname, 'n_players':n_players, 'p_key': p_key}
    return json.dumps(r)

def create_request_response_msg(data_to_send, request, private_key):
    data = {"requested": request, "data": data_to_send}
    signature = crypto.signature_rsa(private_key,json.dumps(data))
    r = {"msg_id": 12, 'data': data, 'sig': signature}
    return json.dumps(r)


## General ##
def broadcast_msg(socks, msg):
    for sock in socks:
        send_msg(sock, msg)

def send_msg(sock, msg):
    # Prefix each message with a 4-byte length (network byte order)
    msg = struct.pack('>I', len(msg)) + bytes(msg, 'utf-8')
    #print(f"sended - {msg}")
    sock.sendall(msg)

def recv_msg(sock):
    # Read message length and unpack it into an integer
    raw_msglen = recvall(sock, 4)
    if not raw_msglen:
        return None
    msglen = struct.unpack('>I', raw_msglen)[0]
    # Read the message data
    return recvall(sock, msglen)

def recvall(sock, n):
    # Helper function to recv n bytes or return None if EOF is hit
    data = bytearray()
    while len(data) < n:
        packet = sock.recv(n - len(data))
        if not packet:
            return None
        data.extend(packet)
    return data

def error_l(n):
    if n == 1:
        print(colored("\nCHEATING",'red'))
    elif n == 2:
        print(colored("\nAssinatura Inválida",'red'))
    elif n == 3:
        print(colored("\nCertificado Inválido",'red'))
    
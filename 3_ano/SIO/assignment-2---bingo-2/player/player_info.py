import socket
from cryptography.hazmat.primitives.asymmetric.rsa import RSAPublicKey
from cryptography.hazmat.primitives import serialization

class PlayerInfo: #for the playing area to use
    def __init__(self, sock : socket, seq : int, nick : str, p_key : RSAPublicKey) -> None:
        self.sock : socket = sock
        self.seq : int = seq
        self.nick : str = nick
        self.publick_key : RSAPublicKey = p_key
    
    def to_dic(self):
        return {'seq': self.seq, 'nick': self.nick, 'p_key': self.publick_key.public_bytes(encoding=serialization.Encoding.PEM,
                                                    format=serialization.PublicFormat.SubjectPublicKeyInfo).decode('ascii')} 

class PlayerInfoLite: #for the players to use
    def __init__(self, seq : int, nick : str, p_key : RSAPublicKey) -> None:
        self.seq : int = seq
        self.nick : str= nick
        self.card : list = None
        self.publick_key : RSAPublicKey = p_key
        self.score : int = None #number of iterations until filling the card (lower is better)
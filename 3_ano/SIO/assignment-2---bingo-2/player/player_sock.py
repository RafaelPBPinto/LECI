import socket
import sys
import traceback
from cryptography.hazmat.primitives import serialization

sys.path.append('../')

from common import crypto
from caller.caller import Caller
from player import Player

def main():
    if len(sys.argv) > 4 or len(sys.argv) < 2 :
        print("--- Usage: python3 player_sock.py port [-c for caller] ---")
        sys.exit(1)
    try:
        port = int(sys.argv[1])
        if port < 0: 
            print("--- Erro: invalid port ---") 
            exit(2)
    except ValueError:
            print("--- Error: Invalid port ---")
            sys.exit(2)
    if len(sys.argv) == 2 or len(sys.argv) == 3:
        hostname = "127.0.0.1"
    else:
        hostname = sys.argv[3]
    client_sock = socket.socket (socket.AF_INET, socket.SOCK_STREAM)
    try:
        client_sock.connect ((hostname, port))
    except socket.gaierror:
        print("--- Error: Invalid hostname ---")
        sys.exit(1)
    except OSError:
        print("--- Error:  ---")
        sys.exit(1)
    try:
        if len(sys.argv) >= 3 and sys.argv[2] == "-c":
            nick = input("Nickname: ")
            priv_key = crypto.gen_rsa_assymmetric_keys()
            seq, n_players, pa_p_key = Player.auth(client_sock, nick, priv_key.public_key().public_bytes(encoding=serialization.Encoding.PEM,
                                                    format=serialization.PublicFormat.SubjectPublicKeyInfo).decode('ascii'), t=0) #auth for caller
            if seq != None:
                caller = Caller(seq, nick, client_sock, priv_key, pa_p_key)
                caller.n_players = n_players
                caller.run()
            elif seq==-2:
                print("The playing area is full")
        else:
            nick = input("Nickname: ")
            priv_key = crypto.gen_rsa_assymmetric_keys()
            seq, pa_p_key = Player.auth(client_sock, nick, priv_key.public_key().public_bytes(encoding=serialization.Encoding.PEM,
                                                    format=serialization.PublicFormat.SubjectPublicKeyInfo).decode('ascii'))
            if seq:
                player = Player(seq, nick, client_sock, priv_key, pa_p_key)
                player.run()
            elif seq==-2:
                print("The playing area is full")
    except Exception:
        print(traceback.format_exc())
    finally:
        client_sock.close()
        sys.exit(0)

        
if __name__ == "__main__":
    main()


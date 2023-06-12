import socket
import sys
import select
import traceback
import errno

from termcolor import colored
from playing_area import PlayingArea
from common import protocol as p

def main():

    # validate the number of arguments and eventually print error message and exit with error

    # verify type of of arguments and eventually print error message and exit with error

    if len(sys.argv) != 2:
        print("--- Erro: numero errado de argumentos (comando correto: python3 server.py porto) ---")
        sys.exit(1)

    try:
        port = int(sys.argv[1])
        if port < 0: ## este if serve apanhar os numeros negativos que não podem ser portas
            print("--- Erro: passe um valor de porto do tipo inteiro positivo ---") 
            sys.exit(2)

    except ValueError:
        print("--- Erro: passe um valor de porto do tipo inteiro positivo ---")
        sys.exit(2)
    
    server_socket = socket.socket (socket.AF_INET, socket.SOCK_STREAM)
    server_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    server_socket.bind (("127.0.0.1", port))
    server_socket.listen (10)
    pa = PlayingArea(server_socket) 
    while 1:
        try:
            pa.n_players = int(input("Number of players: "))
            break
        except Exception:
            print("Invalid input")
    print(colored("Playing area created!", 'green'))
    clients = []
    opened = True
    try:
        while opened:
            try:
                available = select.select ([server_socket] + clients, [], [])[0]
            except ValueError:
                # Sockets may have been closed, check for that
                for client_sock in clients:
                    if client_sock.fileno () == -1: pa.players.remove (client_sock) 
                continue # Reiterate select
            
            for client_sock in available:
                if client_sock is server_socket:
                    newclient, addr = server_socket.accept ()
                    clients.append (newclient)
                else:
                    
                    try:
                        if len (client_sock.recv (1, socket.MSG_PEEK)) != 0:
                            msg = p.recv_msg(client_sock)
                            pa.msg_handler(msg, client_sock)
                        else: # Or just disconnected
                            clients.remove (client_sock)
                            client_sock.close ()
                            if len(clients)==0:
                                opened = False
                            break # Reiterate select
                    except socket.error as e:
                        if e.errno != errno.ECONNRESET:
                            raise # Not error we are looking for
                        clients.remove (client_sock)
                        client_sock.close ()
                        if len(clients)==0:
                            opened = False
                        
    except Exception:
        print(traceback.format_exc())
    finally:
        server_socket.close()

if __name__ == "__main__":
    main()

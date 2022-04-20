import socket
import signal
import sys

def signal_handler(sig, frame):
    print('\nDone!')
    sys.exit(0)

signal.signal(signal.SIGINT, signal_handler)
print('Press Ctrl+C to exit...')

##

ip_addr = "127.0.0.43"
udp_port = 5015

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

while True:
    message=input("Message to send? ").encode()
    if len(message)>0:
        sock.sendto(message, (ip_addr, udp_port))

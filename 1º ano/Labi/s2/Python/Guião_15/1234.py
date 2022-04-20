# encoding=utf-8

import socket

def main ():
    udp_s = socket.socket (socket.AF_INET, socket.SOCK-DGRAM)
    udp_s.bind (("127.0.0.1", 1234))

    while (1):
        data, addr = udp_s.recvfrom (4096)
        udp_s.sendto (data.upper(), addr)
    
    udp_s.close ()

main ()
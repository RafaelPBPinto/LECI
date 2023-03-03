import os
from pickle import TRUE
import struct
from cryptography.hazmat.primitives import padding
from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes

def encrypt_file_aes(filename):
    output_filename = 'encrypted_' + filename
    key = os.urandom(32)
    iv = os.urandom(16)
    cipher = Cipher(algorithms.AES(key), modes.CBC(iv))
    padder = padding.PKCS7(128).padder()
    encryptor = cipher.encryptor() 
    #decryptor = cipher.decryptor()
    #decryptor.update(ct) + decryptor.finalize()
    
    filesize = os.path.getsize(filename)
    with open(filename, 'rb') as inputfile:
            with open(output_filename, 'wb') as outputfile:
                outputfile.write(struct.pack('<Q', filesize))
                outputfile.write(bytes(iv, "utf-8"))
                data = padder.update(inputfile.read())
                data += padder.finalize()
                outputfile.write(encryptor.update(data) + encryptor.finalize())
    print("SUCESSO!!!!")

def main():
    input_file = input('Ficheiro a encriptar: ')
    encrypt_file_aes(input_file)

encrypt_file_aes('texto.txt')

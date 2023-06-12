from termcolor import colored

from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes
from cryptography.hazmat.primitives import hashes, padding, serialization
from cryptography.hazmat.primitives.asymmetric import rsa,utils,padding

CBC_IV_SIZE = 16 #128 bits, tamanho do bloco 


def gen_rsa_assymmetric_keys():
    print(colored("Generating keys...","yellow"))
    keys = rsa.generate_private_key(
                    public_exponent=65537, #equivalente ao e
                    key_size=2048,
                    )
    return keys

#assinar mensagem
def signature_rsa(private_key,message):
    message = bytes(message,encoding='utf8')

    signature = private_key.sign(
                message,
                padding.PSS(
                mgf=padding.MGF1(hashes.SHA256()),
                salt_length=padding.PSS.MAX_LENGTH
                ),
                hashes.SHA256()
                )
    return signature.hex()

#verificar assinatura
def verify_signature(public_key, message, signature):
    message = bytes(message,encoding='utf8')

    signature = bytes.fromhex(signature)
    return public_key.verify(
            signature,
            message,
            padding.PSS(
            mgf=padding.MGF1(hashes.SHA256()),
            salt_length=padding.PSS.MAX_LENGTH
            ),
            hashes.SHA256()
            )

def CBC_encrypt(key,iv,value):
    cipher = Cipher(algorithms.AES(key), modes.CBC(iv))
    if (isinstance(value, int)): #quando é o caller a cifrar
        value_in_bytes = value.to_bytes(16, byteorder='big') #representar inteiro em 16 bytes, big endian
    else: #ja se encontra cifrado previamente
        value_in_bytes = bytes.fromhex(value)

    #padding_length = 16 - (len(value_in_bytes) % 16)
    #value_in_bytes += b'\x00' * padding_length

    encryptor = cipher.encryptor()
    ct = encryptor.update(value_in_bytes) + encryptor.finalize()
    return ct.hex()

def CBC_decrypt(key,iv,value):
    cipher = Cipher(algorithms.AES(key), modes.CBC(iv))
    if(not isinstance(value, bytes)):
        value = bytes.fromhex(value)

    decryptor = cipher.decryptor()
    return decryptor.update(value)
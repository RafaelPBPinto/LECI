import sys
from cryptography.hazmat.primitives.asymmetric import rsa, padding
from cryptography.hazmat.primitives import serialization, hashes

def generate_key():
    size = int(input("Key_size: "))
    
    if size not in [1024,2048,4096]:
        print("Invalid size")
        sys.exit(1)
    
    private_key = rsa.generate_private_key(
        public_exponent=65537,
        key_size=size,
    )

    pem_private = private_key.private_bytes(
        encoding=serialization.Encoding.PEM,
        format=serialization.PrivateFormat.TraditionalOpenSSL,
        encryption_algorithm=serialization.NoEncryption()
    )

    pem_public = private_key.public_key().public_bytes(
        encoding=serialization.Encoding.PEM,
        format=serialization.PublicFormat.SubjectPublicKeyInfo
    )
    
    private_name = input("private key file name: ")
    
    if not private_name.endswith(".pem"):
        private_name = private_name + ".pem"
    
    
    public_name = input("public key file name: ")
    
    if not public_name.endswith(".pem"):
        public_name = public_name + ".pem"
    
    with open(private_name, "wb") as file:
        file.write(pem_private)
    
    with open(public_name, "wb") as file:
        file.write(pem_public)
        
def encrypt(input_file, output_file, key_file):
    with open (key_file, "rb") as key_file:
        public_key = serialization.load_pem_public_key(
            key_file.read(),
        )

    key_size = (public_key.key_size + 7)//8
    cyphertext = []

    with open (input_file, "rb") as input_file:
        while (message := input_file.read(key_size - 66)):
            cyphertext.append(public_key.encrypt(
                            message,
                            padding.OAEP(
                                mgf=padding.MGF1(algorithm=hashes.SHA256()),
                                algorithm=hashes.SHA256(),
                                label=None
                            )
                        ))
    
    with open (output_file, "wb") as output_file:
        for c in cyphertext:
            output_file.write(c)

def decrypt(input_file, output_file, key_file):
    with open (key_file, "rb") as key_file:
        private_key = serialization.load_pem_private_key(
            key_file.read(),
            password=None,
        )

    key_size = (private_key.key_size + 7)//8

    plaintext = []
    with open (input_file, "rb") as input_file:
        while (cyphertext := input_file.read(key_size)):
            plaintext.append(private_key.decrypt(
                            cyphertext,
                            padding.OAEP(
                                mgf=padding.MGF1(algorithm=hashes.SHA256()),
                                algorithm=hashes.SHA256(),
                                label=None
                            )
                        ))
    
    with open (output_file, "wb") as output_file:
        for message in plaintext:
            output_file.write(message)
        
def main():
    gen_key = input("Do you want to generate a new key?(y/n) ")
    
    if gen_key != 'y' and gen_key != 'n' and gen_key != 'Y' and gen_key != 'N':
        print("Invalid input")
        sys.exit(1)
    elif gen_key == 'y' or gen_key == 'Y':
        generate_key()
    
    input_file = input("input file name: ")
    output_file = "encrypt_" + input_file
    key_file = input("public_key_file name: ")
    encrypt(input_file, output_file, key_file)
    
    output_file = "decrypt_" + input_file
    key_file = input("private_key_file name: ")
    decrypt(input_file, output_file, key_file)

main()
import PyKCS11
import sys
from termcolor import colored
from cryptography import x509
from cryptography.hazmat.primitives import hashes
from  cryptography.hazmat.primitives.asymmetric.padding import PKCS1v15
from cryptography.hazmat.backends import default_backend as db

def load_pkcs11_lib():
    lib = '/usr/local/lib/libpteidpkcs11.so' 
    pkcs11 = PyKCS11.PyKCS11Lib()
    pkcs11.load(lib)
    return pkcs11

def sign_message(message):
    pkcs11 = load_pkcs11_lib()
    
    try:
        slots = pkcs11.getSlotList(tokenPresent=True)
        if slots == []:
            print("Introduza o seu cartão de cidadão.")
            # wait for card insertion
            while slots == []:
                slots = pkcs11.getSlotList(tokenPresent=True)
        
        # Slot 0 - Auth slot
        slot = slots[0] 
        session = pkcs11.openSession(slot)
        mechanism = PyKCS11.Mechanism(PyKCS11.CKM_SHA1_RSA_PKCS, None)
        
        certificate_attr = session.findObjects([
                    (PyKCS11.CKA_CLASS, PyKCS11.CKO_CERTIFICATE),
                    (PyKCS11.CKA_LABEL, 'CITIZEN AUTHENTICATION CERTIFICATE')
                    ])[0]

        cert = bytes(certificate_attr.to_dict()['CKA_VALUE'])
        private_key = session.findObjects([
                    (PyKCS11.CKA_CLASS, PyKCS11.CKO_PRIVATE_KEY),
                    (PyKCS11.CKA_LABEL, 'CITIZEN AUTHENTICATION KEY')
                    ])[0]
        
        text = bytes(message, sys.getdefaultencoding()) 
        signature = bytes(session.sign(private_key, text, mechanism)) #sign

        signature_str = signature.hex()

        return signature_str, cert.hex()
    except Exception:
        print(colored("Authentication failed!", 'red'))
        sys.exit()

def verify_signature_auth(challenge, signature_str, cert):
    ce = bytes.fromhex(cert)
    cert = x509.load_der_x509_certificate(ce, backend=db())

    public_key = cert.public_key()
    sig = bytes.fromhex(signature_str)
    
    try:
        public_key.verify(
            sig,
            bytes(challenge, sys.getdefaultencoding()),
            PKCS1v15(),
            hashes.SHA1()
        )
        return True
    except Exception:
        return False

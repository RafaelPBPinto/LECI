import PyKCS11
import binascii
from cryptography import x509
from cryptography.hazmat.primitives import serialization
from cryptography.hazmat.backends import default_backend as db
from cryptography.hazmat.primitives.asymmetric.padding import PKCS1v15
from cryptography.hazmat.primitives.hashes import SHA1, Hash

lib = '/usr/lib/x86_64-linux-gnu/pkcs11/opensc-pkcs11.so'

def main():
    #Load card
    pkcs11 = PyKCS11.PyKCS11Lib()
    pkcs11.load(lib)
    slots = pkcs11.getSlotList(tokenPresent=True)

    all_attr = list(PyKCS11.CKA.keys())
    
    #List contents
    #Filter attributes
    all_attributes = [e for e in all_attr if isinstance(e, int)]

    for slot in slots:
        session = pkcs11.openSession(slot)
        if slot == 0:
            session.login('1111') # DANGER!!! USE YOUR PINCODE!!

        #### Search for objects and extract reference to private key and certificate

        for obj in session.findObjects():
            attr = session.getAttributeValue(obj, all_attributes)

            attrDict = dict(list(zip(all_attributes, attr)))
            print("Type:", PyKCS11.CKO[attrDict[PyKCS11.CKA_CLASS]], "\tLabel:", attrDict[PyKCS11.CKA_LABEL])
            
    cert_objs = session.findObjects([
                (PyKCS11.CKA_CLASS, PyKCS11.CKO_CERTIFICATE),
                (PyKCS11.CKA_LABEL, 'CITIZEN AUTHENTICATION CERTIFICATE')
                ])
    
    for cert_obj in cert_objs:
        cert_der_data = bytes(cert_obj.to_dict()['CKA_VALUE'])    
    
    #Sign object
    mechanism = PyKCS11.Mechanism(PyKCS11.CKM_SHA1_RSA_PKCS, None)

    text = b'text to sign'
    private_key = session.findObjects([
                (PyKCS11.CKA_CLASS, PyKCS11.CKO_PRIVATE_KEY),
                (PyKCS11.CKA_LABEL, 'CITIZEN AUTHENTICATION KEY')
                ])
    
    private_key_data = bytes(private_key[0]['CKA_VALUE'])
    
    signature = bytes(session.sign(private_key_data, text, mechanism))

    print("signature: ", binascii.hexlify(signature))
    
if __name__ == '__main__':
    main()
    
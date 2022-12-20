from cryptography import x509
from cryptography.hazmat.backends import default_backend
import os
import re

def main(): 
    certs_dir = os.scandir('/etc/ssl/certs')
    certs_files = []
    certs_text = []
    pem_certs = []
    
    s_delim = '-----BEGIN CERTIFICATE-----'
    e_delim = '-----END CERTIFICATE-----'
    regex = f'('+s_delim+'.*?'+e_delim+')'
    
    for cert in certs_dir:
        if os.path.isfile(cert):
            certs_files.append(cert)
        
    for c in certs_files:
        with open(c, 'rt') as f:
            pem_cert = re.findall(regex,f.read(),re.DOTALL)
            certs_text.append((c, pem_cert))
    
    for cert in certs_text:
        print(cert)
    ''''
    for c in certs_files:
        with open(c, 'rb') as f:
            pem_certs.append(f.read())
        
    for cert in pem_certs:
        print(x509.load_pem_x509_certificate(cert, default_backend()))
    '''  
if __name__ == '__main__':
    main()
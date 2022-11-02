import os
import click
from cryptography.hazmat.primitives import hashes
from cryptography.hazmat.primitives.hashes import MD5, SHA256, SHA384

@click.command()
@click.option('--input_file', required=True, help='File to be hashed.')
@click.option('--hash_function', required=True, help='Hash function.')
def main(input_file, hash_function):
    if not os.path.exists(input_file):
        print('No such file or directory.')
        exit(1)
    if hash_function not in ['MD5', 'SHA256', 'SHA384', 'SHA512']:
        print('Invalid hash')
        exit(1)
        
    output_file = 'hashed_' + hash_function + '_' + input_file
    
    with open(input_file, 'rb') as f:
        data = f.read()
    
    if hash_function == 'MD5':
        digest = hashes.Hash(hashes.MD5())
    if hash_function == 'SHA256':
        digest = hashes.Hash(hashes.SHA256())
    if hash_function == 'SHA384':
        digest = hashes.Hash(hashes.SHA384())
    if hash_function == 'SHA512':
        digest = hashes.Hash(hashes.SHA512())
    
    digest.update(data)
    hashed_data = digest.finalize()
    
    with open(output_file, 'wb') as f:
        f.write(hashed_data)    

if __name__ == '__main__':
    main()
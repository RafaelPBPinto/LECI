from operator import xor
import os 
import click

@click.command()
@click.option('--input_file1', required=True, help='Input File 1.')
@click.option('--input_file2', required=True, help='Input File 2.')
def main(input_file1, input_file2):
    if not os.path.exists(input_file1):
        print('No such file or directory.')
        exit(1)
    if not os.path.exists(input_file2):
        print('No such file or directory.')
        exit(1)
        
    with open(input_file1, "rb") as f:
        data1 = f.read()
    
    with open(input_file2, "rb") as f:
        data2 = f.read()
        
    bytes = []
    
    for i in range(len(data1)):
        byte = bin(data1[i] ^ data2[i])
        bytes.append(byte)
    
    count_dif = 0
    for byte in bytes:
        for bit in byte:
            if bit == '1':
                count_dif+=1
    
    print(f'Number of bits in file: {len(data1)*8}')
    print(f'Different bits: {count_dif}')
    print(f'Similarity: {count_dif/(len(data1)*8)}')
    
if __name__ == '__main__':
    main()
    
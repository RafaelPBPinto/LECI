f = open(hashpppp.py, "rb")
buffer = f.read(512)
 len(buffer) == 0 --> End-of-file reached
 len(buffer) > 0 --> buffer has len(buffer) bytes
while len(buffer) > 0:

buffer = f.read(512)

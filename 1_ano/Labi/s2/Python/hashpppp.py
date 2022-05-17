Python 3.9.2 (tags/v3.9.2:1a79785, Feb 19 2021, 13:44:55) [MSC v.1928 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license()" for more information.
>>> import hashlib
>>> 
>>> h = hashlib.sha1())
SyntaxError: unmatched ')'
>>> h = hashlib.sha1()
>>> h.update("A long sentence".encode('utf-8'))
>>> print(h.hexdigest())
8f044214feda17edbf0dd7dc59f23511335f7580
>>> f = open(h, "rb")
Traceback (most recent call last):
  File "<pyshell#6>", line 1, in <module>
    f = open(h, "rb")
TypeError: expected str, bytes or os.PathLike object, not HASH
>>> 
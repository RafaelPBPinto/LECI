import pytest
import random 
from fibonacci import fibonacci

def test_inferior_1():
    print("Testa comportamento com n < 1")
    assert fibonacci(0) == [0]
    assert fibonacci(-1) == []

# Para valores de n inferiores a 1 a função deverá devolver uma lista vazia.
def test_negative ():
    r = fibonacci (-10)

    assert isinstance (r, list)
    assert len(r) == 0
    
# Para n igual a 0 a função deverá devolver [0].
def test_0 ():
    assert fibonacci (0) == [0]

# Para n igual a 1 a função deverá devolver [0, 1].
def test_1 ():
    assert fibonacci (1) == [0, 1]

# Para n igual a 2 a função deverá devolver [0, 1, 1].
def test_2 ():
    assert fibonacci (2) == [0, 1, 1]

# Para n igual a 5 a função deverá devolver [0, 1, 1, 2, 3, 5].
def test_3 ():
    assert fibonacci(5) == [0, 1, 1, 2, 3, 5]

# Para qualquer n a função deverá devolver uma lista com n+1 elementos.
def test_n ():
    n = random.randint (10, 100)
    assert len (fibonacci (n)) == n + 1
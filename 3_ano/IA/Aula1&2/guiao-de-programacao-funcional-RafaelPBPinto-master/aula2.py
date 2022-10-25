import math

#Exercicio 4.1
impar = lambda num: num%2 == 1

#Exercicio 4.2
positivo = lambda num: num>0 

#Exercicio 4.3
comparar_modulo = lambda num1, num2: abs(num1) < abs(num2)

#Exercicio 4.4
cart2pol = lambda x,y: (math.sqrt(x*x+y*y), math.atan2(y, x))

#Exercicio 4.5
ex5 = lambda f,g,h: lambda x,y,z: h(f(x,y),g(y,z))

#Exercicio 4.6
def quantificador_universal(lista, f):
    #if lista == []:
    #    return True
    #if f(lista[0]) == False:
    #    return False
    #return True and quantificador_universal(lista[1:], f)

    return [e for e in lista if not f(e)] == []
    pass

#Exercicio 4.9
def ordem(lista, f):
    
    pass

#Exercicio 4.10
def filtrar_ordem(lista, f):
    pass

#Exercicio 5.2
def ordenar_seleccao(lista, ordem):
    pass

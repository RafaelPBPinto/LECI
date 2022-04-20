def sum(a,b):

	soma= print("%d + %d = %d" % (a, b, a+b))
	
	return soma
	
def sub(a,b):
		
	subtracao= print("%d - %d = %d" % (a, b, a-b))
	
	return a-b
	
def prod(a,b):

	produto= print("%d * %d = %d" % (a, b, a*b))
	
	return produto
	
def div(a,b):
	
	divisao= print("%d / %d = %4.3f" % (a, b, a/b))
	
	return divisao

print("Qual operação deseja executar?")
print("1-Adição")
print("2-Subtração")
print("3-Multiplicação")
print("4-Divisão")

print(" ")

resposta = int(input("-> "))

print(" ")

if resposta == 1:
	a = int(input("Primeiro Valor: "))
	b = int(input("Segundo Valor: "))
	
	sum(a,b)
	
if resposta == 2:
	a = int(input("Primeiro Valor: "))
	b = int(input("Segundo Valor: "))
	
	sub(a,b)

if resposta == 3:
	a = int(input("Primeiro Valor: "))
	b = int(input("Segundo Valor: "))
	
	prod(a,b)

if resposta == 4:
	a = float(input("Primeiro Valor: "))
	b = float(input("Segundo Valor: "))
	
	div(a,b)

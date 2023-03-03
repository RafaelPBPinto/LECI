#Exercicio 1.1
from ctypes import sizeof


def comprimento(lista):
	if lista == []:
		return 0
	return 1 + comprimento(lista[1:])
	pass

#Exercicio 1.2
def soma(lista):
	if lista == []:
		return 0
	return lista[0] + soma(lista[1:])
	pass

#Exercicio 1.3
def existe(lista, elem):
	if lista == []:
		return False
	elif lista[0] == elem:
		return True
	else:
		return existe(lista[1:], elem)
	pass

#Exercicio 1.4
def concat(l1, l2):
	if l1 == [] or l2 == []:
		return l1
	l1.append(l2[0])
	return concat(l1, l2[1:])
	pass

#Exercicio 1.5
def inverte(lista):
	if lista == []:
		return []
	return inverte(lista[1:]) + [lista[0]]
	pass

#Exercicio 1.6
def capicua(lista):
	if lista == []:
		return True
	else:
		if lista[0] == lista[-1]:
			return capicua(lista[1:-1])
		else:
			return False
	pass

#Exercicio 1.7
def concat_listas(lista):
	if lista == []:
		return []
	return lista[0] + concat_listas(lista[1:])
	pass

#Exercicio 1.8
def substitui(lista, original, novo):
	if lista == []:
		return []
	if lista[0] == original:
		return [novo] + substitui(lista[1:], original, novo)
	else:
		return [lista[0]] + substitui(lista[1:], original, novo)
	pass

#Exercicio 1.9
def fusao_ordenada(lista1, lista2):
	if lista1 == [] and lista2 == []:
		return []
	if lista1[0] <= lista2[0]:
		return [lista1[0], lista2[0]] + fusao_ordenada(lista1[1:], lista2[1:])
	else:
		return [lista2[0], lista1[0]] + fusao_ordenada(lista1[1:], lista2[1:])
	pass

#Exercicio 1.10
def lista_subconjuntos(lista):
	pass


#Exercicio 2.1
def separar(lista):
	if lista == []:
		return []
	return [lista[0][0]], [lista[0][1]] and separar(lista[1:])
	pass

#Exercicio 2.2
def remove_e_conta(lista, elem):
	if lista == []:
		return []
	if lista[0] == elem:
		return [], 1 + remove_e_conta(lista[1:], elem)
	else:
		return [lista[0]], 0 + remove_e_conta(lista[1:], elem)
	pass

#Exercicio 3.1
def cabeca(lista):
	pass

#Exercicio 3.2
def cauda(lista):
	pass

#Exercicio 3.3
def juntar(l1, l2):
	if len(l1) != len(l2):
		return None
	if l1 == []:
		return []
	return [(l1[0],l2[0])] + juntar(l1[1:],l2[1:])
	pass

#Exercicio 3.4
def menor(lista):
	if lista == []:
		return None
	if lista[0] <= lista[1]:
		return menor([lista[0]] + lista[2:])
	else:
		return menor(lista[1:])
	pass

#Exercicio 3.6
def max_min(lista):
	pass
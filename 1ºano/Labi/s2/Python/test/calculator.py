def main():

    print("Calculadora")
    print("-----------")
    print("1 => Soma")
    print("2 => Subtração")
    print("3 => Multiplicação")
    print("4 => Divisão")
    print(" ")

    escolha = input("Opção: ")
    n1 = float(input("op1: "))
    n2 = float(input("op2: "))

    print(" ")

    if escolha == "1":
        adder(n1, n2)
    elif escolha == "2":
        subtract(n1, n2)
    elif escolha == "3":
        product(n1, n2)
    elif escolha == "4":
        division(n1, n2)
    
def adder(a, b):
    res = a+b
    return print(str(a) + " + " + str(b) + " = " + str(res))

def subtract(a, b):
    res = a-b
    return print(str(a) + " - " + str(b) + " = " + str(res))
    

def product(a, b):
    res = a*b
    return print(str(a) + " / " + str(b) + " = " + str(res))
    

def divison(a, b):
    res = a/b
    return print(str(a) + " / " + str(b) + " = " + str(res))
    
    

main()
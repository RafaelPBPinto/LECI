def main():
    print("Ano Bissexto")
    print("------------")
    ano = int(input("Ano: "))

    if (ano%4 == 0 and ano%100 != 0):
        print("O ano " + str(ano) + " é bissexto!")
    else:
        print("O ano " + str(ano) + " não é bissexto!")

    
main()
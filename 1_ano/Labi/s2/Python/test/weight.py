def main():
    weight = float(input("Weight: "))
    kl     = input("(K)g or (L)bs: ")
    
    if (kl == "l" or kl == "L"):
        kg = weight*0.45359237
        print("Weight in Kg: " + str(kg))
    elif (kl == "k" or kl == "K"):
        lbs = weight*2.20462262
        print("Weight in Lbs: " + str(lbs))

main()
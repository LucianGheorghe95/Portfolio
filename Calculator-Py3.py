#Importam modulul necesar pentru operatiile matematice avansate.
import math

#Bucla while pentru a executa programul continuu si a permite utilizatorului sa se intoarca in meniu si sa aleaga o noua optiune.
while True:
    #User-ul alege operatia matematica pe care o doreste din meniu.
    print("\nSelecteaza operatia matematica dorita.\n\n0 - Adunare\n1 - Scadere\n2 - Inmultire\n3 - Impartire\n4 - Modulo\n5 - Ridicare la putere\n6 - Radical\n7 - Sinus\n8 - Cosinus\n9 - Tangenta\n")

    oper = input("\nOptiunea ta: ") #Aceasta variabila stocheaza valoarea aleasa de user.

    #Adunare
    if oper == "0":
        val1 = float(input("\nPrima valoare: ")) #Aceasta variabila stocheaza prima valoare introdusa, convertita din string in float.
        val2 = float(input("\nA doua valoare: ")) #Aceasta variabila stocheaza a doua valoare introdusa, convertita din string in float.

        print("\nRezultatul este: " + str(val1 + val2) + "\n")

        #Intoarcere la meniul principal sau iesirea din program.
        inapoi = input('\nMergi inapoi in meniul principal? (y/n) ')

        if inapoi == 'y':
            continue
        else:
            break

    #Scadere
    elif oper == "1":
        val1 = float(input("\nPrima valoare: "))
        val2 = float(input("\nA doua valoare: "))

        print("\nRezultatul este: " + str(val1 - val2) + "\n")

        #Intoarcere la meniul principal sau iesirea din program
        inapoi = input('\nMergi inapoi in meniul principal? (y/n) ')

        if inapoi == 'y':
            continue
        else:
            break

    #Inmultire
    elif oper == "2":
        val1 = float(input("\nPrima valoare: "))
        val2 = float(input("\nA doua valoare: "))

        print("\nRezultatul este: " + str(val1 * val2) + "\n")

        #Intoarcere la meniul principal sau iesirea din program
        inapoi = input('\nMergi inapoi in meniul principal? (y/n) ')

        if inapoi == 'y':
            continue
        else:
            break

    #Impartire
    elif oper == "3":
        val1 = float(input("\nPrima valoare: "))
        val2 = float(input("\nA doua valoare: "))

        print("\nRezultatul este: " + str(val1 / val2) + "\n")

        #Intoarcere la meniul principal sau iesirea din program
        inapoi = input('\nMergi inapoi in meniul principal? (y/n) ')

        if inapoi == 'y':
            continue
        else:
            break

    #Modulo
    elif oper == "4":
        val1 = float(input("\nPrima valoare: "))
        val2 = float(input("\nA doua valoare: "))

        print("\nRezultatul este: " + str(val1 % val2) + "\n")

        #Intoarcere la meniul principal sau iesirea din program
        inapoi = input('\nMergi inapoi in meniul principal? (y/n) ')

        if inapoi == 'y':
            continue
        else:
            break

    #Ridicare la putere
    elif oper == "5":
        val1 = float(input("\nValoarea bazei: "))
        val2 = float(input("\nValoarea exponentului: "))

        print("\nRezultatul este: " + str(math.pow(val1, val2)) + "\n")

        #Intoarcere la meniul principal sau iesirea din program
        inapoi = input('\nMergi inapoi in meniul principal? (y/n) ')

        if inapoi == 'y':
            continue
        else:
            break

    #Radical
    elif oper == "6":
        val1 = float(input("\nIntroduceti valoarea pentru extragerea radicalului: "))

        print("\nRezultatul este: " + str(math.sqrt(val1)) + "\n")

        #Intoarcere la meniul principal sau iesirea din program
        inapoi = input('\nMergi inapoi in meniul principal? (y/n) ')

        if inapoi == 'y':
            continue
        else:
            break

    #Sinus
    elif oper == "7":
        val1 = float(input("\nIntroduceti valoarea (in grade) pentru calcularea sinus: "))

        print("\nRezultatul este: " + str(math.sin(math.radians(val1))) + "\n")

        #Intoarcere la meniul principal sau iesirea din program
        inapoi = input('\nMergi inapoi in meniul principal? (y/n) ')

        if inapoi == 'y':
            continue
        else:
            break

    #Cosinus
    elif oper == "8":
        val1 = float(input("\nIntroduceti valoarea (in grade) pentru calcularea cosinus: "))

        print("\nRezultatul este: " + str(math.cos(math.radians(val1))) + "\n")

        #Intoarcere la meniul principal sau iesirea din program
        inapoi = input('\nMergi inapoi in meniul principal? (y/n) ')

        if inapoi == 'y':
            continue
        else:
            break

    #Tangenta
    elif oper == "9":
        val1 = float(input("\nIntroduceti valoarea (in grade) pentru calcularea tangentei: "))

        print("\nRezultatul este: " + str(math.tan(math.radians(val1))) + "\n")

        #Intoarcere la meniul principal sau iesirea din program
        inapoi = input('\nMergi inapoi in meniul principal? (y/n) ')

        if inapoi == 'y':
            continue
        else:
            break

	#Tratarea optiunilor invalide
    else:
        print("\nOptiune invalida!\n")
        continue

#Finalul programului
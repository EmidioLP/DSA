# Calculadora em Python

# Desenvolva uma calculadora em Python com tudo que você aprendeu nos capítulos até aqui no curso. 
# A solução será apresentada no próximo capítulo!

print("\n******************* Calculadora em Python *******************")
def soma(num1, num2):
    return num1 + num2

def subtracao(num1, num2):
    return num1 - num2

def multiplicacao(num1, num2):
    return num1 * num2

def divisao(num1, num2):
    return num1/num2

var = 0 

while var != 1:
    opcao= int(input("Selecione o número da operação desejada: \n1 - Soma \n2 - Subtração \n3 - Multiplicação \n4 - Divisão \nDigite sua opção: "))
    if opcao == 1:
        var = 1
        num1 = int(input("Digite o primeiro número: "))
        num2 = int(input("Digite o segundo número: "))
        print(soma(num1, num2))
    elif opcao == 2:
        var = 1
        num1 = int(input("Digite o primeiro número: "))
        num2 = int(input("Digite o segundo número: "))
        print(subtracao(num1, num2))
    elif opcao == 3:
        var = 1
        num1 = int(input("Digite o primeiro número: "))
        num2 = int(input("Digite o segundo número: "))
        print(multiplicacao(num1, num2))
    elif opcao == 4:
        var = 1
        num1 = int(input("Digite o primeiro número: "))
        num2 = int(input("Digite o segundo número: "))
        print(divisao(num1, num2))
    else:
        print("Valor inválido, tente novamente!")
#!/bin/bash


#utilizei a biblioteca para facilitar a montagem das operações complexas
import math

#função das operações basicas
def calculo_simples():
    print("\n CÁLCULO SIMPLES \n")
    num1 = float(input("Digite o primeiro número: "))
    operador = input("Escolha a operação (+, -, *, /): ")
    num2 = float(input("Digite o segundo número: "))

    if operador == '+':
        resultado = num1 + num2
    elif operador == '-':
        resultado = num1 - num2
    elif operador == '*':
        resultado = num1 * num2
    elif operador == '/':
        if num2 == 0:
            #quis simular um bug pra fazer uma graça
            print("@#$%¨&¨%$#@error!@#$%¨&¨%$#@@#$%¨¨%$#@!@#$%¨%$#@error!@#$%¨%$#@!@#$%¨%$#@!@#$%¨%$#@@#$%¨%$#@error@#$%¨%$#@!@#$%$#@!@#$%%$#error@@#$%$#@")
            return
        resultado = num1 / num2
    else:
        print("Operador inválido.")
        return

    print(f"Resultado: {resultado}")

#função das operações mais complexas
def calculo_complexo():
    print("\n CÁLCULO COMPLEXO \n")
    print("1. Potência (x^y)")
    print("2. Raiz quadrada")
    print("3. Logaritmo 'base 10'")
    escolha = input("Escolha a operação do numero correspondente: ")

    if escolha == '1':
        base = float(input("Digite a base: "))
        expoente = float(input("Digite o expoente: "))
        resultado = math.pow(base, expoente)
    elif escolha == '2':
        numero = float(input("Digite o número: "))
        if numero < 0:
            print("Erro: digite um valor plausivel.")
            return
        resultado = math.sqrt(numero)
    elif escolha == '3':
        numero = float(input("Digite o número: "))
        if numero <= 0:
            print("digite um numero plausivel. ")
            return
        resultado = math.log10(numero)
    else:
        print("Opção inválida.")
        return

    print(f"Resultado: {resultado}")

#funcão da intrudução do programa
def inicio():
    while True:
        print("\nBem vindo à calculadora!\n")
        print("1. Cálculo Simples")
        print("2. Cálculo Complexo")
        print("3. Sair")
        opcao = input("Escolha uma opção do numero correspondente: ")

        if opcao == '1':
            calculo_simples()
        elif opcao == '2':
            calculo_complexo()
        elif opcao == '3':
            print("Encerrando a calculadora. ")
            break
        else:
            print("\nEscolha uma opcão valida. ")

inicio()

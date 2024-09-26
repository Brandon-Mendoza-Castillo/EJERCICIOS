numeros = input("Ingresa números separados por comas: ").split(',')
numeros = [int(num) for num in numeros]
pares = len([num for num in numeros if num % 2 == 0])
impares = len([num for num in numeros if num % 2 != 0])
print(f"Números pares: {pares}, Números impares: {impares}")

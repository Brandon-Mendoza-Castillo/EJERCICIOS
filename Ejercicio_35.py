from collections import Counter
numeros = input("Ingresa números separados por comas: ").split(',')
numeros = [int(num) for num in numeros]
contador = Counter(numeros)
mas_frecuente = contador.most_common(1)[0][0]
print(f"El número más frecuente es {mas_frecuente}.")

# Escribe un código que imprima un número y su cuadrado a lo largo de un rango de valores
# También que imprima la suma de todos los cuadrados de dicho rango

# Define el valor mínimo y el valor máximo
lower = 1
Upper = 5

# Crea una variable squaresum que tenga al inicio 0

Squaresum = 0

# Loop a lo largo del rango y por cada valor:
	# Imprime el valor y el valor al cuadrado
	# Adiciona el valor al cuadrado a la variable que llamé squaresum

for (i in lower:Upper) {
  cat (i, i^2, "\n")
  Squaresum = Squaresum + i^2
}

cat("The sum of it all is", Squaresum)
# Una vez terminado el loop, imprime la variable squaresum 







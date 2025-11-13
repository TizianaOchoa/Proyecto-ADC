%%writefile fibonacci_input.c
#include <stdio.h>

int main() {
    int n; // Variable para almacenar la cantidad de números de Fibonacci a generar

    printf("Ingrese la cantidad de números de Fibonacci a generar (max 20): ");
    scanf("%d", &n);

    if (n <= 0 || n > 20) {
        printf("Cantidad inválida. Por favor, ingrese un número entre 1 y 20.\n");
        return 1; // Salir con código de error
    }

    // Declarar un array lo suficientemente grande para almacenar la secuencia
    // Aunque el usuario ingrese max 20, es buena práctica tener un buffer si n fuera mayor
    long long fib[20]; // Usar long long para evitar desbordamiento con números grandes

    // Inicializar los dos primeros números de la secuencia
    fib[0] = 0;
    fib[1] = 1;

    // Generar los números restantes
    for (int i = 2; i < n; i++) {
        fib[i] = fib[i-1] + fib[i-2];
    }

    // Imprimir la secuencia de Fibonacci
    printf("Secuencia de Fibonacci con %d términos:\n", n);
    for (int i = 0; i < n; i++) {
        printf("%lld ", fib[i]);
    }
    printf("\n");

    return 0; // Salir correctamente
}

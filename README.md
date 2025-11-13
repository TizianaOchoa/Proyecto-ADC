# Arquitectura De Computadoras
# 📄 Descripción

Este repositorio fue creado como parte de una actividad práctica de la materia Arquitectura de Computadoras, dictada por el profesor Narciso Pérez. La consigna consistía en seleccionar una problemática y desarrollar su solución siguiendo los lineamientos dados. Además, la actividad debía complementarse con un desarrollo en Google Colab, integrando teoría y práctica.

Este proyecto incluye:

Una implementación en C (fibonacci.c) de la secuencia de Fibonacci.

Una implementación en ensamblador (Fibonacc.asm) para ver cómo se realiza a nivel bajo.

Un diagrama (Diagrama.pdf) que ilustra el algoritmo paso a paso.

El proyecto está pensado para fines educativos, para estudiar la lógica del algoritmo y su implementación en distintos niveles.

# Secuencia de Fibonacci

Repositorio que contiene el desarrollo de la secuencia de Fibonacci, incluyendo un diagrama, código en ensamblador y en C.

## 🎯 Objetivo

Crear y demostrar la secuencia de Fibonacci utilizando distintos lenguajes de programación, mostrando cómo funciona el algoritmo y cómo se representa gráficamente.

## 🛠️ Cómo ejecutar

### En C:

1. Compila el archivo `fibonacci.c`:

```bash
gcc fibonacci.c -o fibonacci
```

2. Ejecuta el programa:

```bash
./fibonacci
```

### En ensamblador:

1. Ensambla el archivo `Fibonacc.asm` (según tu ensamblador, por ejemplo NASM):

```bash
nasm -f elf64 Fibonacc.asm -o Fibonacc.o
ld Fibonacc.o -o Fibonacc
```

2. Ejecuta el programa:

```bash
./Fibonacc
```

> Ajusta los comandos según tu sistema operativo y compilador disponible.

## 📁 Estructura del proyecto

```
Secuencia de Fibonacci/
├─ Diagrama.pdf
├─ Fibonacc.asm
└─ fibonacci.c
```

## 👤 Autor

* Nombre: Tiziana Ochoa
* GitHub: [TizianaOchoa](https://github.com/TizianaOchoa)
* Fecha de la actividad: 2025-10-08

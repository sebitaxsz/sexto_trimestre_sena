import 'dart:io';

void main() {
  int numero = int.parse(stdin.readLineSync()!);

  if (numero % 2 == 0) {
    print("Es par");
  } else {
    print("Es impar");
  }

  int contador = 0;

  for (int i = 1; i <= numero; i++) {
    if (numero % i == 0) {
      contador++;
    }
  }

  if (contador == 2) {
    print("Es primo");
  } else {
    print("No es primo");
  }
}
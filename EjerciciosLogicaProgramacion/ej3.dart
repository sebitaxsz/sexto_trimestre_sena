import 'dart:io';

void main() {
  List<int> numeros = [];

  for (int i = 0; i < 10; i++) {
    numeros.add(int.parse(stdin.readLineSync()!));
  }

  int mayor = numeros[0];
  int menor = numeros[0];

  for (int n in numeros) {
    if (n > mayor) {
      mayor = n;
    }
    if (n < menor) {
      menor = n;
    }
  }

  print("Mayor: $mayor");
  print("Menor: $menor");
}
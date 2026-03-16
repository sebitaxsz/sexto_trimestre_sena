import 'dart:io';

void main() {
  List<int> numeros = [];

  while (numeros.length < 10) {
    int num = int.parse(stdin.readLineSync()!);

    if (!numeros.contains(num)) {
      numeros.add(num);
    }
  }

  print(numeros);
}
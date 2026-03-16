import 'dart:io';

void main() {
  print("Ingrese la cantidad:");
  int n = int.parse(stdin.readLineSync()!);

  int a = 0;
  int b = 1;

  for (int i = 0; i < n; i++) {
    print(a);
    int temp = a + b;
    a = b;
    b = temp;
  }
}
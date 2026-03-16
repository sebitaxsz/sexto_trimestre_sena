import 'dart:io';

void operaciones(double a, double b, String op) {
  if (op == "+") {
    print(a + b);
  } else if (op == "-") {
    print(a - b);
  } else if (op == "*") {
    print(a * b);
  } else if (op == "/") {
    print(a / b);
  }
}

void main() {
  double n1 = double.parse(stdin.readLineSync()!);
  double n2 = double.parse(stdin.readLineSync()!);
  String op = stdin.readLineSync()!;

  operaciones(n1, n2, op);
}
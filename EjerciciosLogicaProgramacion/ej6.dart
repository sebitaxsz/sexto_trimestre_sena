void main() {
  String texto = "SENA ES ADSO";

  int e = 0;
  int a = 0;

  for (int i = 0; i < texto.length; i++) {
    if (texto[i] == "E") {
      e++;
    }
    if (texto[i] == "A") {
      a++;
    }
  }

  print("E: $e");
  print("A: $a");
}
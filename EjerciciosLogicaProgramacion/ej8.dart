void main() {
  String texto =
      "No sabía que era ser Dios hasta que aprendí a programar";

  texto = texto.replaceAll("Dios", "Programador");
  texto = texto.replaceAll("aprendí", "Ingrese");
  texto = texto.replaceAll("programar", "codificar");

  print(texto);
}
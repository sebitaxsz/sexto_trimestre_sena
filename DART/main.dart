import 'class/Person.dart';
void main() {
  //CREACION DE UNA INSTANCIA DE LA CLASE Persona
  print("Creando una instancia de Persona....");
  // Tipo final es una parecido a una CONST de JS
  final objPersona = Persona("Juan", 19, "Sebastiansena982@gmail.com");
  // USO DEL METODO DE LA INTERFAZ imprimible
  print("Imprimiendo detalles de la persona....");
  objPersona.imprimirDetalles();
  //USO DE LOS METODOS DE LA INTERFAZ Serializable
  print("Convirtiendo persona a JSON...");
  print(objPersona.toJsonString());
}
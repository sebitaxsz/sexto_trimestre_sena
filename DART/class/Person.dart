
import '../interfaces/IntPrintable.dart'; 
import '../interfaces/IntSerializable.dart';
import 'dart:convert';

class Persona implements Imprimible, Serializable {
  //ENCAPSULAMIENTO - Atributos privados
  String _nombre;
  int _edad;
  String _email;

  // CONSTRUCTOR 
  Persona(this._nombre, this._edad, this._email);

  // GETTERS Y SETTERS - Encapsulamiento
  String get nombre => _nombre;
  set nombre(String value) {
    if ( value.isNotEmpty) {
      _nombre = value;
    }'../interfaces/IntPrintable.dart';
  }

  int get edad => _edad; 
  set edad(int value) {
    if (value > 0) {
      _edad = value;
    }
  }

  String get email => _email;
  set email(String value) {
    if (value.contains('@')) {
      _email = value;
    }
  }

  // IMPLEMENTACION DE METODOS DE LA INTERFAZ Imprimible 
  @override
  void imprimirDetalles() {
    print('Detalle de la informacion de la persona: Nombre: $_nombre, Edad: $_edad, Email: $_email');
  }

  // IMPLEMENTACION DE METODOS DE LA INTERFAZ Serializable
  @override 
  Map<String, dynamic> toJson() {
    return {'nombre': _nombre, 'edad': _edad, 'email': _email};
  }

  @override
  String toJsonString() {
    return jsonEncode(toJson());
  }
}
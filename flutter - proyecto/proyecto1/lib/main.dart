import 'package:get/get.dart';
/*
import 'package:get/get.dart';
Importa la librería GetX.
GetX es un framework que sirve para:
Manejo de estado
Navegación entre pantallas
Inyección de dependencias
Manejo de controladores
Por qué se usa:
Porque simplifica mucho la navegación y la gestión del estado en Flutter.
Por ejemplo:
Get.to(Pagina());
Get.back();
Sin tener que usar Navigator.
*/

import 'package:proyecto_instructor_diego/ui/views/splash/splash_view.dart';

import 'package:flutter/material.dart';
/*
Importa la librería principal de Flutter para interfaces gráficas.
Incluye los widgets de Material Design (los componentes visuales que ves en pantalla).
Ejemplos de widgets que vienen aquí:
Scaffold
AppBar
Text
Button
Column
Row
MaterialApp
Por qué se usa:
Porque Flutter necesita estos widgets para construir la interfaz visual.
*/

// ---- Funcion principal de toda la app ---- //
void main() {
  runApp(const MainApp());
}
// ------------------------------------------ //

// ---  CLASS MAIN APP --- //

class MainApp extends StatelessWidget { // Significa Widget sin estado
// Esto quiere decir que:
// no cambia dinámicamente
// no guarda variables que modifiquen la interfaz

  const MainApp({super.key}); // Constructor de la clase, identica widgets del arbol de flutter

  @override // Significa que estamos sobrescribiendo un método que viene del StatelessWidget

  Widget build(BuildContext context) {  // 
    return const GetMaterialApp(

      debugShowCheckedModeBanner: false, // Esto es un booleano el cual permite ver o ocultar el banner que dice DEBUG
      
      home: SplashView(), // PANTALLA INICIAL
  
    );
  }
}

// ----------------------- //
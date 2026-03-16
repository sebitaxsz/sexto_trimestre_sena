import 'package:flutter/material.dart';


// COLUMNAS SON EN VERTICAL

class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color.fromARGB(255, 34, 151, 112),
      // width: 220, // Ancho
      // height: 300, // Alto
      child: Column(
        // Child: Solo un componente ()
        // Children: Permite varios componentes []
        mainAxisAlignment: MainAxisAlignment.center, // Posicionamiento de los elementos
        mainAxisSize: MainAxisSize.max, // Ocupa lo minimo o maximo de la vista VERTICAL
        crossAxisAlignment: CrossAxisAlignment.center, // Ocupa lo necesario de espacio para mostrar el contenido de forma HORIZONTAL 
        children: [
          Text("Hola, somos Juan,Karen,Evjany"),
          Text("Hola, somos Juan,Karen,Evjany"),
          Text("Hola, somos Juan,Karen,Evjany"),
          Text("Hola, somos Juan,Karen,Evjany"),
          Text("Hola, somos Juan,Karen,Evjany"),
        ],
      ),
    );
  }
}

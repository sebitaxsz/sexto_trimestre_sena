import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Spacer(),
        Text('Puticos'),
        Text('Texto Grande', style: TextStyle(fontSize: 24)),
        Text('Texto Grande',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
        Text('Texto Curvado', style: TextStyle(fontStyle: FontStyle.italic)),
        Text('Texto Curvado', style: TextStyle(color: Colors.red, fontSize: 30, backgroundColor: Colors.amber )),
        Text('Decorator', style: TextStyle(decoration: TextDecoration.underline, 
        fontSize: 30, 
        color: Colors.blue,
        decorationColor: Colors.blue)),
        Text(
          'Espaciado entre letras', 
          style: TextStyle(
            letterSpacing: 5,
            fontSize: 20,
          ),
        ),
        Text(
          'Texto largo Texto largo Texto largo Texto largo Texto largo Texto largo Texto largo Texto largo', 
          style: TextStyle(
            fontSize: 30,
          ),
          maxLines: 2, // Numero de lineas
          overflow: TextOverflow.ellipsis, // Este atributo dara a entender que hay mas texto continuando de donde se ve
        ),
        Spacer(),
      ],
    );
  }
}

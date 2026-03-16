import 'package:flutter/material.dart';

class TextFieldExample extends StatelessWidget {
  const TextFieldExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 0),
        TextField(), // Campos donde se pueden recibir datos
        SizedBox(height: 32),
        TextField(), // Campos donde se pueden recibir datos
        SizedBox(height: 32),
        TextField(decoration: InputDecoration(hintText: 'Introduce tu email')),
        SizedBox(height: 32),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Introduce tu email',
              prefixIcon: Icon(Icons.mail),
              border: OutlineInputBorder(),
            ),
          ),
        ),
        SizedBox(height: 32),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Introduce tu contraseña',
              prefixIcon: Icon(Icons.lock),
              border: OutlineInputBorder(),
            ),
          ), // Este borde sirve para hacerlo como una caja
        ),
        SizedBox(height: 32),
      ],
    );
  }
}

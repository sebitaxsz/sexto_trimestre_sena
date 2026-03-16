import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  const RowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding( // Padding = Espacio 
      padding: const EdgeInsets.only(top: 86), // con el .all se toma el padding en todas las direcciones.
      child: Container(
        // height: double.infinity
        child: const Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: Text('Ejemplo1')), // Aqui lo volvemos un widget
            Text('Ejemplo2'),
            // Spacer(), // Genera un espacio entre elementos 
            Text('Ejemplo3'),
          ],
        ),
      ),
    );
  }
}
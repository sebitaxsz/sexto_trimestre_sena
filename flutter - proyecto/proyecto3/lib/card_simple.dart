import 'package:flutter/material.dart';

class CardSimple extends StatelessWidget {
  const CardSimple({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo de Card'),
      ),
      body: Center(
        child: Card(
          elevation: 5.0,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  'Tarjeta de Ejemplo',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text('Este es el contenido de la tarjeta.'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
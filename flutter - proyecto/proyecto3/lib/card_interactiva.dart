import 'package:flutter/material.dart';

class CardInteractiva extends StatelessWidget {
  const CardInteractiva({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tarjeta interactiva')),
      body: Center(
        child: Card(
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: InkWell(
            onTap: () {
              print('La tarjeta ha sido tocada!');
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Tocaste la tarjeta!')),
              );
            },
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: ListTile(
                leading: Icon(Icons.person, size: 40, color: Colors.blue),
                title: Text(
                  'Perfil de usuario',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Toca para ver mas informacion'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
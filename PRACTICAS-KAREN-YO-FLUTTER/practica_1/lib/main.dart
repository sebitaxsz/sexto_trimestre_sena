import 'package:flutter/material.dart';
// import 'package:practica_1/components/text.dart';
import 'package:practica_1/components/textfield.dart';
// import 'package:practica_1/layouts/column.dart';
// import 'package:practica_1/layouts/row.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold( // El Scaffold es como el esqueleto
        body: TextFieldExample(),
      ),
    );
  }
}


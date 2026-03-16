import 'package:flutter/material.dart';
import 'card_simple.dart';
// import 'card_interactiva.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CardSimple(), 
    );
  }
}
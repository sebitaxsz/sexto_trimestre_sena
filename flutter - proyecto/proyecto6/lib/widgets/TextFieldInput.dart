// ignore_for_file: file_name
import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  const TextFieldInput({super.key});
  @override
  Widget build(BuildContext context) {
    // Todo: implement build
    const appTitle = 'Demostration of get data input';
    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle),
      ),
      body: const MyCustomForm());
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});
  @override
  State<StatefulWidget> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final myController = TextEditingController();
  @override
  void dispose() {
    // Clean
      myController.dispose();
      super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Todo
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recover text entry'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: TextField(
          controller: myController,
        ),
      ),
      floatingActionButton: FloatingActionButton(
// WHEN
// THE
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
// RET
// TEXT EDITING
                content: Text(myController.text),
              );
            }
          );
        },
        tooltip: 'Show the value',  
        child: const Icon(Icons.text_fields),
      ),
    );
  }
}
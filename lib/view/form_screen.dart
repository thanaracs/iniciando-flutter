import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nova Tarefa'),
      ),
      body: Center(
        child: Container(
          height: 650,
          width: 370,
          decoration: BoxDecoration(
            color: const Color.fromARGB(230, 218, 231, 243),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 3,
              color: const Color.fromARGB(132, 218, 231, 243),
            ),
          ),
          child: Column(
            children: [
              TextField(),
              TextFormField(),
            ],
          ),
        ),
      ),
    );
  }
}

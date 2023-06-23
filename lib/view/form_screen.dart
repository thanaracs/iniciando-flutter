import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController difficultyController = TextEditingController();
  TextEditingController imageController = TextEditingController();

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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: nameController,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Nome:',
                    fillColor: Colors.white54,
                    filled: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: difficultyController,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Nível de dificultade:',
                    fillColor: Colors.white54,
                    filled: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  onChanged: (text) {
                    setState(() {});
                  },
                  controller: imageController,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Imagem:',
                    fillColor: Colors.white54,
                    filled: true,
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    width: 2,
                    color: Colors.blue,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(
                    imageController.text,
                    errorBuilder: (BuildContext context, Object exception,
                        StackTrace? stacktrace) {
                      return Container();
                    },
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print(nameController.text);
                  print(difficultyController.text);
                  print(imageController.text);
                },
                child: const Text('Adicionar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

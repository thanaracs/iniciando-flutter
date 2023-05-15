import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(color: Color.fromARGB(255, 10, 192, 179),width: 75, height: 75,),
              Container(color: Color.fromARGB(255, 255, 64, 226), height: 75, width: 75,),
              Container(color: Color.fromARGB(255, 117, 39, 176), height: 75, width: 75,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(color: Color.fromARGB(255, 0, 255, 204),width: 75, height: 75,),
              Container(color: Color.fromARGB(255, 242, 201, 215), height: 75, width: 75,),
              Container(color: Color.fromARGB(255, 236, 161, 0), height: 75, width: 75,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(color: Colors.cyan,width: 75, height: 75,),
              Container(color: Colors.pinkAccent, height: 75, width: 75,),
              Container(color: Colors.purple, height: 75, width: 75,),
            ],
          ),
          // Container(color: Colors.amber, height: 30, width: 300,
          // child: Text('Diamante Amarelo', style: TextStyle(color: Colors.black, fontSize: 28), textAlign: TextAlign.center,),
          // ),
          // ElevatedButton(
            // onPressed: (){
            //   print('Você apertou o botão');
            // },
            //  child: Text('Aperte o botão!'),
            // ),
         
      ],
      ),
    );
  }
}


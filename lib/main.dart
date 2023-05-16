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
      home:Scaffold(
        appBar: AppBar(
          title: Text('Flutter: Meus primeiros passos'),
          ),
          body: Container(
            child: Stack( 
              children: [
                Container(color: Colors.blue, height: 140,),
                Container(
                  color: Colors.white,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: Colors.black26,
                        width: 72,
                        height: 100,
                      ),
                      Text('Aprender Flutter'),
                      ElevatedButton(onPressed: (){}, child: Icon(Icons.arrow_drop_up))
                    ],
                  ),)
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(onPressed: () {} 
          ),
         ),
    );
  }
}


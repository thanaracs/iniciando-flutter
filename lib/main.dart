import 'package:flutter/material.dart';

import 'difficulty.dart';
import 'task.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size.width);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Color.fromARGB(239, 219, 229, 247),
        appBar: AppBar(
          title: const Text('Pokemons'),
          leading: Container(),
        ),
        body: AnimatedOpacity(
          opacity: opacidade ? 1 : 0,
          duration: Duration(milliseconds: 800),
          child: ListView(
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: Tasks(
                    'Pikachu',
                    'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/f19a8dbd-b9e4-4ce8-9726-5a1412453ce7/dabhcbd-a0cbee93-78f5-4333-82b8-84fc8eca21bb.png/v1/fill/w_700,h_700/minimalist_pikachu_icon__free_to_use__by_jedflah_dabhcbd-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NzAwIiwicGF0aCI6IlwvZlwvZjE5YThkYmQtYjllNC00Y2U4LTk3MjYtNWExNDEyNDUzY2U3XC9kYWJoY2JkLWEwY2JlZTkzLTc4ZjUtNDMzMy04MmI4LTg0ZmM4ZWNhMjFiYi5wbmciLCJ3aWR0aCI6Ijw9NzAwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.PUw1onIVUdSdAviPULhpMqSHCxf2fCOl9828aLgwfk4',
                    5),
              ),
              Tasks(
                'Charmander',
                'https://icon-library.com/images/charmander-icon/charmander-icon-24.jpg',
                4,
              ),
              Tasks(
                  'Gengar',
                  'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/f19a8dbd-b9e4-4ce8-9726-5a1412453ce7/dadvg7c-92aa3e4d-5e02-42c6-9049-9db201adaece.png/v1/fill/w_730,h_730/minimalist_gengar_icon__free_to_use__by_jedflah_dadvg7c-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NzMwIiwicGF0aCI6IlwvZlwvZjE5YThkYmQtYjllNC00Y2U4LTk3MjYtNWExNDEyNDUzY2U3XC9kYWR2ZzdjLTkyYWEzZTRkLTVlMDItNDJjNi05MDQ5LTlkYjIwMWFkYWVjZS5wbmciLCJ3aWR0aCI6Ijw9NzMwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.Q7KFNWseFsEMeziYl_TjtQl8UJR7Lbj-qPP_oCfm7tw',
                  2),
              Tasks(
                  'Mew',
                  'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/f19a8dbd-b9e4-4ce8-9726-5a1412453ce7/dabkfu5-1d5bfb73-5d94-40cb-b2f4-a78f9893e9a7.png/v1/fill/w_711,h_711/minimalist_mew_icon__free_to_use__by_jedflah_dabkfu5-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NzExIiwicGF0aCI6IlwvZlwvZjE5YThkYmQtYjllNC00Y2U4LTk3MjYtNWExNDEyNDUzY2U3XC9kYWJrZnU1LTFkNWJmYjczLTVkOTQtNDBjYi1iMmY0LWE3OGY5ODkzZTlhNy5wbmciLCJ3aWR0aCI6Ijw9NzExIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.O-bcwHjOtDhpPEOevpntT0hhaj0aUdyvmDndyNNCAWg',
                  2),
              Tasks(
                  'Lugia',
                  'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/f19a8dbd-b9e4-4ce8-9726-5a1412453ce7/dae51o7-a8e29f30-4591-4cf1-9543-e1fc5d97597c.png/v1/fill/w_400,h_400/minimalist_lugia_icon__free_to_use__by_jedflah_dae51o7-400t.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NzAwIiwicGF0aCI6IlwvZlwvZjE5YThkYmQtYjllNC00Y2U4LTk3MjYtNWExNDEyNDUzY2U3XC9kYWU1MW83LWE4ZTI5ZjMwLTQ1OTEtNGNmMS05NTQzLWUxZmM1ZDk3NTk3Yy5wbmciLCJ3aWR0aCI6Ijw9NzAwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.WRLEhUhJFKbj41UC52nzeOHzlMM8YPpWoKI1HVeYbvs',
                  1),
              Tasks(
                  'Eevee',
                  'https://e7.pngegg.com/pngimages/320/200/png-clipart-eevee-pokemon-go-glaceon-pikachu-icon-tha%C2%B4ng-ba%C2%A1o-logo-computer-wallpaper-thumbnail.png',
                  5)
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              opacidade = !opacidade;
            });
          },
          child: Icon(Icons.remove_red_eye),
        ),
      ),
    );
  }
}

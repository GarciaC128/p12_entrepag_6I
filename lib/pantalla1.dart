import 'package:flutter/material.dart';
import 'package:Garciac/pantalla2.dart';

class Pantalla1 extends StatelessWidget {
  const Pantalla1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla1 Carlos Garcia'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text("FlutLab is on your service!", style: TextStyle(fontSize: 30)),
          Icon(
            Icons.mood,
            size: 110,
            color: Color(0xfff92b2b),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: const Text(
              "Vamos a la pantalla 2",
              style: TextStyle(fontSize: 29, color: Colors.yellow),
            ),
            onPressed: () {
              Navigator.pushNamed(context, "/pantalla2",
                  arguments: "Mensa de pantalla1");
            },
          ),
          Card(
            color: Colors.black,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Tarjeta GarciaC",
                style: TextStyle(fontSize: 28, color: Colors.pink),
              ),
            ),
          )
        ],
      ),
    );
  } //widget
} //Clase pantalla1

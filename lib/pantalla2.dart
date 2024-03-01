import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final argumento = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla2 Carlos Garcia'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(argumento),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: const Text(
                  "Regresar a Pantalla1",
                  style: TextStyle(fontSize: 30, color: Colors.yellow),
                ),
                onPressed: () {
                  Navigator.pop(context);
                }),
            //  Card with size
            Container(
              width: double.infinity,
              height: 320,
              child: Card(
                color: Colors.black,
                margin: EdgeInsets.all(32),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Flutter Teacher',
                    style: TextStyle(fontSize: 30, color: Colors.green),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}

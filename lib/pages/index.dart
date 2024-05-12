import 'package:flutter/material.dart';
import 'package:trescursivo/components/MainBoardGrid.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenido al Tres en Raya Recursivo'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                '¡Hora de jugar!',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
            ),

        
           Expanded(child: MainBoardGrid())

          ],
        ),
      ),
    );
  }
}

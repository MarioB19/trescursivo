import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Importa flutter/services.dart
import 'package:trescursivo/pages/index.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Asegura que los widgets estén inicializados
  SystemChrome.setPreferredOrientations([ // Configura las orientaciones permitidas
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(const MyApp()); // Corre la aplicación una vez que las orientaciones están configuradas
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tres en Raya Recursivo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
          debugShowCheckedModeBanner: false,
    );
  }
}

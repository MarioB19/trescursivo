import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trescursivo/components/TicTacToeBoard.dart';
import 'package:trescursivo/controllers/BoardController.dart';

class MainBoardGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      // Envuelve el GridView en un AspectRatio para mantener una proporción adecuada
      child: AspectRatio(
        aspectRatio: 1, // Mantiene el grid cuadrado (la altura igual a la anchura)
        child: Container(
          color: const Color.fromARGB(255, 181, 244, 54), // El color de fondo del contenedor es el de las líneas
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1.0, // Mantiene cada sub-tablero cuadrado
              crossAxisSpacing: 8.0, // Espacio grueso para las líneas
              mainAxisSpacing: 8.0, // Espacio grueso para las líneas
            ),
            itemCount: 9,
            itemBuilder: (context, index) {
              final controller = Get.put(BoardController(), tag: 'board$index');
              return Container(
                padding: const EdgeInsets.all(8), // Espacio para 'respirar' dentro del tablero individual
                child: TicTacToeBoard(controller: controller),
              );
            },
          ),
        ),
      ),
    );
  }
}

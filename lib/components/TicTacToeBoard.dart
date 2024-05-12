import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trescursivo/components/TicTacToeCell.dart';
import 'package:trescursivo/controllers/BoardController.dart';

class TicTacToeBoard extends StatelessWidget {
  final BoardController controller;

  TicTacToeBoard({required this.controller});


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.0,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: 9,
        itemBuilder: (context, index) {
   
          
          // Devolver una celda con el color correspondiente
          return Container(padding: const EdgeInsets.all(2), child: TicTacToeCell (controller: controller, index: index));
        },
      ),
    );
  }
}

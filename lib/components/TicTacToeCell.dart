import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trescursivo/controllers/BoardController.dart';

class TicTacToeCell extends StatelessWidget {
  final int index;
  final BoardController controller;

  const TicTacToeCell({super.key, required this.index, required this.controller});

  @override
  Widget build(BuildContext context) {


    return Obx(() => GestureDetector(
          onTap: () => controller.markCell(index),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 60, 150, 223),
           
            ),
            child: Center(
              child: Text(
                controller.board[index],
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ));
  }
}

import 'package:get/get.dart';

class BoardController extends GetxController {
  RxList<String> board = List.filled(9, '').obs;
  var xTurn = true.obs;

  void markCell(int index) {
    if (board[index] != '') return; 

    board[index] = xTurn.value ? 'X' : 'O';
    xTurn.value = !xTurn.value;
    checkWinner();
  }

  void checkWinner() {
    // Posibilidades de ganar en el juego de tres en raya
    List<List<int>> winConditions = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6],
    ];

    for (List<int> condition in winConditions) {
      if (board[condition[0]] == board[condition[1]] && 
          board[condition[1]] == board[condition[2]] && 
          board[condition[0]] != '') {
        // Aquí puedes manejar lo que sucede cuando alguien gana
        // Por ejemplo, puedes mostrar un diálogo o resetear el juego
        final winner = board[condition[0]];
        Get.snackbar('Game Over', '$winner has won!');
        resetBoard();
        break;
      }
    }
  }

  void resetBoard() {
    board.value = List.filled(9, '');
    xTurn.value = true; 
  }
}

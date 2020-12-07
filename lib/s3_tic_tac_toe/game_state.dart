import 'package:flutter/material.dart';

class GameState {
  GameState() {
    isX = true;
    colorsMatrix = List<Color>.filled(9, null);
  }

  bool isX;
  List<Color> colorsMatrix = <Color>[];

  final List<List<int>> winConditions = <List<int>>[
    <int>[0, 4, 8],
    <int>[2, 4, 6],
    <int>[0, 1, 2],
    <int>[3, 4, 5],
    <int>[6, 7, 8],
    <int>[0, 3, 6],
    <int>[1, 4, 7],
    <int>[2, 5, 8]
  ];

  List<int> checkWinningCondition() {
    for (int i = 0; i < winConditions.length; i++) {
      final List<int> currentRow = winConditions[i];

      if (colorsMatrix[currentRow[0]] == colorsMatrix[currentRow[1]] &&
          colorsMatrix[currentRow[0]] == colorsMatrix[currentRow[2]] &&
          colorsMatrix[currentRow[0]] != null) {
        return currentRow;
      }
    }

    return null;
  }
}

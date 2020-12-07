import 'package:flutter/material.dart';
import 'package:flutter_gad_2020/s3_tic_tac_toe/game_state.dart';

class Square {
  Square({this.index, this.color, this.colorChanged, this.gameState});

  final int index;
  Color color;
  bool colorChanged;
  GameState gameState;

  void setColor() {
    if (colorChanged) {
      return;
    }

    color = gameState.isX ? Colors.green : Colors.yellow[300];

    gameState.colorsMatrix[index] = color;
    gameState.isX = !gameState.isX;
    colorChanged = true;
  }
}

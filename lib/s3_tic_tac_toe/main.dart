import 'package:flutter/material.dart';

import 'tic_tac_toe.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tic Tac Toe',
      theme: ThemeData(
        primaryColor: Colors.blueGrey[900],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const TicTacToe(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_gad_2020/s3_tic_tac_toe/game_state.dart';

import 'square.dart';

class TicTacToe extends StatefulWidget {
  const TicTacToe({Key key}) : super(key: key);

  @override
  _TicTacToeState createState() => _TicTacToeState();
}

class _TicTacToeState extends State<TicTacToe> {
  List<Square> squares;
  bool buttonVisible;
  GameState gameState = GameState();

  @override
  void initState() {
    super.initState();
    resetState();
  }

  void resetState() {
    gameState = GameState();
    toggleButton(false);

    squares = <Square>[];

    for (int i = 0; i < 9; i++) {
      squares.add(Square(index: i, color: Colors.grey[300], colorChanged: false, gameState: gameState));
    }
  }

  void checkWin() {
    final List<int> winningRow = gameState.checkWinningCondition();

    if (winningRow == null) {
      return;
    }

    for (final Square square in squares) {
      if (!winningRow.contains(square.index)) {
        setState(() {
          square.color = Colors.grey[300];
        });
      }
    }

    toggleButton(true);
  }

  void toggleButton(bool state) {
    setState(() {
      buttonVisible = state;
    });
  }

  GestureDetector createSquare(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          squares[index].setColor();
        });
        checkWin();
      },
      child: AnimatedContainer(
        color: squares[index].color,
        duration: const Duration(milliseconds: 200),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tic Tac Toe'),
        centerTitle: true,
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              children: List<GestureDetector>.generate(9, (int index) => createSquare(index)),
            ),
            const SizedBox(height: 32.0),
            if (buttonVisible == true)
              RaisedButton(
                onPressed: () => resetState(),
                color: Colors.blue,
                child: const Text(
                  'Reset!',
                  style: TextStyle(color: Colors.white),
                ),
              )
            else
              const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guess My Number',
      theme: ThemeData(
        primaryColor: Colors.indigo[700],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const GuessMyNumber(title: 'Guess My Number'),
    );
  }
}

class GuessMyNumber extends StatefulWidget {
  const GuessMyNumber({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _GuessMyNumberState createState() => _GuessMyNumberState();
}

class _GuessMyNumberState extends State<GuessMyNumber> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _textFieldController = TextEditingController();

  int _guessedNumber, _randomNumber = 1 + Random().nextInt(100);
  String _feedback, _buttonText = 'Check!';
  bool _textFieldEnabled = true;

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('You guessed right!'),
          content: SingleChildScrollView(
            child: Text('It was $_guessedNumber'),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Try again!'),
              onPressed: () {
                Navigator.of(context).pop();
                _resetGameState();
              },
            ),
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  _textFieldController.clear();
                  _textFieldEnabled = false;
                  _buttonText = 'Reset';
                });
              },
            ),
          ],
        );
      },
    );
  }

  void _resetGameState() {
    setState(() {
      _randomNumber = 1 + Random().nextInt(100);
      _feedback = null;
      _buttonText = 'Check!';
      _textFieldController.clear();
      _textFieldEnabled = true;
    });
  }

  void _checkNumber() {
    if (_guessedNumber == null) {
      return;
    }

    _feedback = 'You tried $_guessedNumber\n';

    if (_guessedNumber > _randomNumber) {
      return setState(() {
        _feedback += 'Try lower!';
      });
    }

    if (_guessedNumber < _randomNumber) {
      return setState(() {
        _feedback += 'Try higher!';
      });
    }

    setState(() {
      _feedback += 'You guessed right!';
    });

    _showMyDialog();
  }

  Text _addTextWidget(String text, double fontSize) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: fontSize,
      ),
    );
  }

  SizedBox _addSizedBox(double height) {
    return SizedBox(
      height: height,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 8.0),
        child: Container(
          child: Column(
            children: <Widget>[
              _addTextWidget("I'm thinking of a number between 1 and 100.", 20),
              _addSizedBox(24.0),
              _addTextWidget("It's your turn to guess my number!", 16),
              _addSizedBox(16.0),
              _addTextWidget((_feedback != null) ? _feedback : '', 24),
              _addSizedBox(16.0),
              Card(
                elevation: 2.5,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      _addTextWidget('Try a number!', 24),
                      _addSizedBox(20.0),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              enabled: _textFieldEnabled,
                              keyboardType: TextInputType.number,
                              controller: _textFieldController,
                              decoration: InputDecoration(
                                hintText: 'Insert a number...',
                                suffixIcon: IconButton(
                                  icon: const Icon(Icons.clear),
                                  onPressed: () {
                                    _textFieldController.clear();
                                  },
                                ),
                              ),
                              onChanged: (String value) {
                                setState(() {
                                  _guessedNumber = int.tryParse(value);
                                });
                              },
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'^[1-9][0-9]?$|^100$')),
                              ],
                            ),
                            _addSizedBox(24),
                            RaisedButton(
                              child: Text(_buttonText),
                              onPressed: () {
                                if (_buttonText == 'Reset') {
                                  return _resetGameState();
                                }

                                _checkNumber();
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

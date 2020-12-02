import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:powers/powers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number Shapes',
      theme: ThemeData(
        primaryColor: Colors.green[900],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const NumberShapes(title: 'Number Shapes'),
    );
  }
}

class NumberShapes extends StatefulWidget {
  const NumberShapes({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _NumberShapesState createState() => _NumberShapesState();
}

class _NumberShapesState extends State<NumberShapes> {
  final TextEditingController _textFieldController = TextEditingController();

  int _inputNumber;
  String _feedback;

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('$_inputNumber'),
          content: SingleChildScrollView(
            child: Text('$_feedback'),
          ),
        );
      },
    );
  }

  void _checkNumber() {
    if (_inputNumber == null) {
      return;
    }

    if (_inputNumber.isSquare) {
      if (_inputNumber.isCube) {
        _feedback = '$_inputNumber is both SQUARE and TRIANGULAR.';
        return;
      }

      _feedback = '$_inputNumber is SQUARE.';
      return;
    }

    if (_inputNumber.isCube) {
      _feedback = '$_inputNumber is TRIANGULAR.';
      return;
    }

    _feedback = '$_inputNumber is neither SQUARE nor TRIANGULAR.';
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
              const Text(
                'Please input a number to see if it is square or triangular',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              TextFormField(
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
                    _inputNumber = int.tryParse(value);
                  });
                },
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.check),
        backgroundColor: Colors.green[900],
        onPressed: () {
          _checkNumber();
          _textFieldController.clear();

          if (_inputNumber != null) {
            _showMyDialog();
          }
        },
      ),
    );
  }
}

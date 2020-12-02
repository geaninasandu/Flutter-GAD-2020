import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Currency Converter',
      home: CurrencyConverter(title: 'Currency Converter'),
    );
  }
}

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CurrencyConverterState createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _textFieldController = TextEditingController();

  double _amount, _convertedAmount;
  final RegExp _digitRegex = RegExp('^([0-9]*[.])?[0-9]+');

  /// Check whether the provided input is a full match for the RegEx
  bool _validateInputData(String value) {
    final RegExpMatch match = _digitRegex.firstMatch(value);

    if (match == null) {
      return false;
    }

    return match.group(0) == value;
  }

  /// Check if the form validation executed properly and set the convertedAmount variable to the corresponding value
  /// or null otherwise
  void _handleSubmit() {
    setState(() {
      _convertedAmount =
          (_formKey.currentState.validate()) ? 4.87 * _amount : null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Column(
        children: <Widget>[
          Image.network(
            'https://bit.ly/3nKKcAu',
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: _textFieldController,
                    decoration: InputDecoration(
                        hintText: 'Enter the amount in EUR',

                        /// Add clear icon button
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: () {
                            _textFieldController.clear();
                            setState(() => _convertedAmount = null);
                          },
                        )),
                    onChanged: (String value) {
                      if (value == '') {
                        setState(() => _convertedAmount = null);
                        _textFieldController.clear();
                        return;
                      }

                      _amount = double.parse(value);
                    },
                    inputFormatters: <TextInputFormatter>[
                      /// Added input formatter for denying the user the possibility of inserting two dots;
                      FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*$')),
                    ],
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'Please insert a value!';
                      }

                      if (!_validateInputData(value)) {
                        return 'Invalid input!';
                      }

                      return null;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: OutlineButton(
                      onPressed: () {
                        _handleSubmit();
                      },
                      child: const Text(
                        'Convert',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
              (_convertedAmount != null)
                  ? _convertedAmount.toStringAsFixed(2) + ' RON'
                  : '',
              style: const TextStyle(
                fontSize: 25.0,
              ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'basic_phrases.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Phrases',
      theme: ThemeData(
        primaryColor: Colors.blue[800],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const BasicPhrases(),
    );
  }
}

import 'package:flutter/material.dart';

import 'language.dart';
import 'phrase_container.dart';
import 'phrases_bank.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Phrases',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const BasicPhrases(),
    );
  }
}

class BasicPhrases extends StatelessWidget {
  const BasicPhrases({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Phrases'),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        shrinkWrap: false,
        itemCount: 2 * phrases.length,
        itemBuilder: (BuildContext context, int index) {
          return (index % 2 == 0)
              ? PhraseContainer(index: index ~/ 2, language: Language.en)
              : PhraseContainer(index: index ~/ 2, language: Language.fr);
        },
      ),
    );
  }
}

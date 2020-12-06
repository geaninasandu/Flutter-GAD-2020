import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

import 'language.dart';
import 'phrases_bank.dart';

class PhraseContainer extends StatefulWidget {
  const PhraseContainer({Key key, this.index, this.language}) : super(key: key);

  final int index;
  final Language language;

  @override
  _PhraseContainerState createState() => _PhraseContainerState();
}

class _PhraseContainerState extends State<PhraseContainer> {
  final AudioCache player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          gradient: LinearGradient(
            begin: Alignment(-0.9, -0.7),
            end: Alignment(0.8, 0.0),
            colors: <Color>[Color(0xff24C6DC), Color(0xff514A9D)],
          )),
      child: FlatButton(
        onPressed: () async {
          final String audioUrl =
              (widget.language == Language.en) ? phrases[widget.index].englishSound : phrases[widget.index].frenchSound;

          await player.play(audioUrl);
        },
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            widget.language == Language.en ? phrases[widget.index].englishPhrase : phrases[widget.index].frenchPhrase,
            style: TextStyle(
              color: Colors.grey[50],
              fontSize: 20.0,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

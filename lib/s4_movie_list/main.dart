import 'package:flutter/material.dart';

import 'movie_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie List',
      theme: ThemeData(
        primaryColor: Colors.orangeAccent[700],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MovieList(),
    );
  }
}

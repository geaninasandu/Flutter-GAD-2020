import 'dart:core';

import 'package:meta/meta.dart';

class Movie {
  Movie(
      {@required this.id,
      @required this.year,
      @required this.title,
      @required this.genre,
      @required this.cover,
      @required this.runtime});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json['id'],
      year: json['year'],
      title: json['title'],
      runtime: json['runtime'],
      genre: json['genres'][0],
      cover: json['large_cover_image'],
    );
  }

  final int id, year, runtime;
  final String title, cover, genre;

  @override
  String toString() {
    return 'Movie{id: $id, year: $year, genre: $genre, runtime: $runtime, title: $title, cover: $cover}';
  }
}

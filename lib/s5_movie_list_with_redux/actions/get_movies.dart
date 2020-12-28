library get_movies;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_gad_2020/s5_movie_list_with_redux/models/movie.dart';

part 'get_movies.freezed.dart';

@freezed
abstract class GetMovies with _$GetMovies {
  const factory GetMovies.start(int page) = GetMoviesStart;

  const factory GetMovies.successful(List<Movie> movies) = GetMoviesSuccessful;

  const factory GetMovies.error(dynamic error) = GetMoviesError;
}

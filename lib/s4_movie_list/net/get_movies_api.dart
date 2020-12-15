import 'dart:convert';

import 'package:flutter_gad_2020/s4_movie_list/models/query_parameters_model.dart';
import 'package:http/http.dart';

import '../enums/genre.dart';
import '../models/movie_model.dart';

Future<List<Movie>> getMoviesWithFilters(QueryParameters queryParameters) async {
  final String domain = addQueryParametersToUrl('https://yts.mx/api/v2/list_movies.json?', queryParameters);
  final Response response = await get(domain);

  if (response.statusCode != 200) {
    throw Exception('Failed to load films');
  }

  final Map<String, dynamic> films = jsonDecode(response.body) as Map<String, dynamic>;
  final Map<String, dynamic> data = films['data'];
  final List<dynamic> movies = data['movies'];

  final List<Movie> movieList = <Movie>[];

  for (final dynamic movie in movies) {
    movieList.add(Movie.fromJson(movie));
  }

  return movieList;
}

String addQueryParametersToUrl(String domain, QueryParameters queryParameters) {
  domain += 'limit=${queryParameters.limit}&page=${queryParameters.page}&';

  for (final Genre genre in queryParameters.genres) {
    domain += 'genre=${genre.toString().split('.').last}&';
  }

  return domain;
}

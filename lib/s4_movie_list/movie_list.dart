import 'package:flutter/material.dart';
import 'package:flutter_gad_2020/s4_movie_list/models/query_parameters_model.dart';
import 'package:flutter_gad_2020/s4_movie_list/widgets/filters_panel.dart';

import 'models/movie_model.dart';
import 'net/get_movies_api.dart';
import 'widgets/film_widget.dart';

class MovieList extends StatefulWidget {
  @override
  MovieListState createState() => MovieListState();
}

class MovieListState extends State<MovieList> {
  List<Movie> _movieList = <Movie>[];
  bool isLoading = true, filtersVisibility = false;
  QueryParameters queryParameters = QueryParameters();

  @override
  void initState() {
    super.initState();
    getMovies();
  }

  Future<void> getMovies() async {
    _movieList = await getMoviesWithFilters(queryParameters);
    setState(() {
      isLoading = false;
    });
    queryParameters = QueryParameters();
  }

  @override
  Widget build(BuildContext context) {
    print(queryParameters);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie List'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.filter_alt),
            onPressed: () {
              setState(() {
                filtersVisibility = !filtersVisibility;
              });
            },
          ),
          if (filtersVisibility) FiltersPanel(parent: this),
          const Divider(),
          Expanded(
            child: isLoading
                ? const Center(child: CircularProgressIndicator())
                : ListView.separated(
                    padding: const EdgeInsets.all(16.0),
                    shrinkWrap: true,
                    itemCount: _movieList.length,
                    itemBuilder: (BuildContext context, int index) => FilmWidget(movieList: _movieList, index: index),
                    separatorBuilder: (BuildContext context, int index) => const Divider(),
                  ),
          ),
        ],
      ),
    );
  }
}

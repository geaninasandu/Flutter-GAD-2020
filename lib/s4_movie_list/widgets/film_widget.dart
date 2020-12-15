import 'package:flutter/material.dart';

import '../models/movie_model.dart';

class FilmWidget extends StatefulWidget {
  const FilmWidget({this.movieList, this.index});

  final List<Movie> movieList;
  final int index;

  @override
  _FilmWidgetState createState() => _FilmWidgetState();
}

class _FilmWidgetState extends State<FilmWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Expanded>[
        Expanded(
          flex: 2,
          child: Image.network(widget.movieList[widget.index].cover),
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text(
                  '${widget.movieList[widget.index].title} (${widget.movieList[widget.index].year.toString()})',
                  style: TextStyle(
                    color: Colors.grey[850],
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  '${widget.movieList[widget.index].genre}  |  ${widget.movieList[widget.index].runtime.toString()}m',
                  style: TextStyle(
                    color: Colors.grey[850],
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

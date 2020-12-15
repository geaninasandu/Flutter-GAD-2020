import 'package:flutter/material.dart';
import 'package:flutter_gad_2020/s4_movie_list/enums/genre.dart';

import '../movie_list.dart';

// ignore: must_be_immutable
class FiltersPanel extends StatefulWidget {
  FiltersPanel({Key key, this.parent}) : super(key: key);

  MovieListState parent;

  @override
  _FiltersPanelState createState() => _FiltersPanelState();
}

class _FiltersPanelState extends State<FiltersPanel> {
  final List<bool> _isChecked = List<bool>.filled(Genre.values.length, false);

  TextField _createTextField(String hint, String queryField) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: hint,
      ),
      onChanged: (String value) {
        if (queryField == 'limit') {
          widget.parent.queryParameters.limit = int.tryParse(value);
        } else {
          widget.parent.queryParameters.page = int.tryParse(value);
        }
      },
    );
  }

  CheckboxListTile _createCheckboxListTile(int index) {
    return CheckboxListTile(
      value: _isChecked[index],
      onChanged: (bool currentValue) {
        setState(() {
          _isChecked[index] = currentValue;
        });

        if (currentValue) {
          return widget.parent.queryParameters.genres.add(Genre.values[index]);
        }

        widget.parent.queryParameters.genres.remove(Genre.values[index]);
      },
      title: Text(
        Genre.values[index].toString().split('.').last,
        style: TextStyle(color: Colors.grey[850]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              _createTextField('Movies per page', 'limit'),
              const SizedBox(height: 8.0),
              _createTextField('Page number', 'page'),
              const SizedBox(height: 16.0),
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: Genre.values.length,
                  itemBuilder: (BuildContext context, int index) => _createCheckboxListTile(index),
                  separatorBuilder: (BuildContext context, int index) => const Divider(),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    widget.parent.filtersVisibility = false;
                    widget.parent.isLoading = true;
                    widget.parent.getMovies();
                  });
                },
                color: Colors.orangeAccent[700],
                child: const Text(
                  'Apply filters',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

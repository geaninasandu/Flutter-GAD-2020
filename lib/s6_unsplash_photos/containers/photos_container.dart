import 'package:flutter/material.dart';
import 'package:flutter_gad_2020/s6_unsplash_photos/models/index.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:meta/meta.dart';
import 'package:redux/redux.dart';

class PhotosContainer extends StatelessWidget {
  const PhotosContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Photo>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Photo>>(
      builder: builder,
      converter: (Store<AppState> store) => store.state.photos.asList(),
    );
  }
}

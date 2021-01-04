import 'package:flutter/material.dart';
import 'package:flutter_gad_2020/s6_unsplash_photos/models/index.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class OrientationContainer extends StatelessWidget {
  const OrientationContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<String> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, String>(
      builder: builder,
      converter: (Store<AppState> store) => store.state.orientation,
    );
  }
}

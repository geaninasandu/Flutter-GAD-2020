import 'package:flutter_gad_2020/s6_unsplash_photos/actions/get_photos.dart';
import 'package:flutter_gad_2020/s6_unsplash_photos/actions/set_orientation.dart';
import 'package:flutter_gad_2020/s6_unsplash_photos/actions/set_query.dart';
import 'package:flutter_gad_2020/s6_unsplash_photos/models/app_state.dart';

AppState reducer(AppState state, dynamic action) {
  final AppStateBuilder builder = state.toBuilder();

  if (action is GetPhotosStart) {
    builder.isLoading = true;
  } else if (action is GetPhotosSuccessful) {
    builder
      ..photos.addAll(action.photos)
      ..isLoading = false
      ..page = builder.page + 1;
  } else if (action is GetPhotosError) {
    builder.isLoading = false;
  } else if (action is SetOrientation) {
    builder
      ..orientation = action.orientation
      ..page = 1
      ..photos.clear();
  } else if (action is SetQuery) {
    builder
      ..query = action.query
      ..orientation = null
      ..page = 1
      ..photos.clear();
  }

  return builder.build();
}

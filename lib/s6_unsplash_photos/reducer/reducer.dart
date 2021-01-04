import 'package:flutter_gad_2020/s6_unsplash_photos/actions/index.dart';
import 'package:flutter_gad_2020/s6_unsplash_photos/models/index.dart';
import 'package:redux/redux.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  TypedReducer<AppState, GetPhotosStart>(_getPhotosStart),
  TypedReducer<AppState, GetPhotosSuccessful>(_getPhotosSuccessful),
  TypedReducer<AppState, GetPhotosError>(_getPhotosError),
  TypedReducer<AppState, SetOrientation>(_setOrientation),
  TypedReducer<AppState, SetQuery>(_setQuery),
]);

AppState _getPhotosStart(AppState state, GetPhotosStart action) {
  return state.rebuild((AppStateBuilder builder) {
    builder.isLoading = true;
  });
}

AppState _getPhotosSuccessful(AppState state, GetPhotosSuccessful action) {
  return state.rebuild((AppStateBuilder builder) {
    builder
      ..photos.addAll(action.photos)
      ..isLoading = false
      ..page = builder.page + 1;
  });
}

AppState _getPhotosError(AppState state, GetPhotosError action) {
  return state.rebuild((AppStateBuilder builder) {
    builder.isLoading = false;
  });
}

AppState _setOrientation(AppState state, SetOrientation action) {
  return state.rebuild((AppStateBuilder builder) {
    builder
      ..orientation = action.orientation
      ..page = 1
      ..photos.clear();
  });
}

AppState _setQuery(AppState state, SetQuery action) {
  return state.rebuild((AppStateBuilder builder) {
    builder
      ..query = action.query
      ..orientation = null
      ..page = 1
      ..photos.clear();
  });
}

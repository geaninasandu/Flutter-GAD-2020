library app_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:flutter_gad_2020/s6_unsplash_photos/models/photo.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState() {
    return _$AppState((AppStateBuilder builder) {
      builder
        ..page = 1
        ..isLoading = false;
    });
  }

  AppState._();

  BuiltList<Photo> get photos;

  int get page;

  bool get isLoading;

  @nullable
  String get orientation;

  @nullable
  String get query;
}

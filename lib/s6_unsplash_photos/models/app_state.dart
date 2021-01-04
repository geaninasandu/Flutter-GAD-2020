part of models;

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

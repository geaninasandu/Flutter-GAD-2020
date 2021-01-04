// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GetPhotosTearOff {
  const _$GetPhotosTearOff();

// ignore: unused_element
  GetPhotosStart start(int page) {
    return GetPhotosStart(
      page,
    );
  }

// ignore: unused_element
  GetPhotosSuccessful successful(List<Photo> photos) {
    return GetPhotosSuccessful(
      photos,
    );
  }

// ignore: unused_element
  GetPhotosError error(dynamic error) {
    return GetPhotosError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetPhotos = _$GetPhotosTearOff();

/// @nodoc
mixin _$GetPhotos {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(int page),
    @required Result successful(List<Photo> photos),
    @required Result error(dynamic error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(int page),
    Result successful(List<Photo> photos),
    Result error(dynamic error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(GetPhotosStart value),
    @required Result successful(GetPhotosSuccessful value),
    @required Result error(GetPhotosError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(GetPhotosStart value),
    Result successful(GetPhotosSuccessful value),
    Result error(GetPhotosError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetPhotosCopyWith<$Res> {
  factory $GetPhotosCopyWith(GetPhotos value, $Res Function(GetPhotos) then) = _$GetPhotosCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetPhotosCopyWithImpl<$Res> implements $GetPhotosCopyWith<$Res> {
  _$GetPhotosCopyWithImpl(this._value, this._then);

  final GetPhotos _value;
  // ignore: unused_field
  final $Res Function(GetPhotos) _then;
}

/// @nodoc
abstract class $GetPhotosStartCopyWith<$Res> {
  factory $GetPhotosStartCopyWith(GetPhotosStart value, $Res Function(GetPhotosStart) then) =
      _$GetPhotosStartCopyWithImpl<$Res>;
  $Res call({int page});
}

/// @nodoc
class _$GetPhotosStartCopyWithImpl<$Res> extends _$GetPhotosCopyWithImpl<$Res>
    implements $GetPhotosStartCopyWith<$Res> {
  _$GetPhotosStartCopyWithImpl(GetPhotosStart _value, $Res Function(GetPhotosStart) _then)
      : super(_value, (v) => _then(v as GetPhotosStart));

  @override
  GetPhotosStart get _value => super._value as GetPhotosStart;

  @override
  $Res call({
    Object page = freezed,
  }) {
    return _then(GetPhotosStart(
      page == freezed ? _value.page : page as int,
    ));
  }
}

/// @nodoc
class _$GetPhotosStart implements GetPhotosStart {
  const _$GetPhotosStart(this.page) : assert(page != null);

  @override
  final int page;

  @override
  String toString() {
    return 'GetPhotos.start(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetPhotosStart &&
            (identical(other.page, page) || const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(page);

  @override
  $GetPhotosStartCopyWith<GetPhotosStart> get copyWith =>
      _$GetPhotosStartCopyWithImpl<GetPhotosStart>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(int page),
    @required Result successful(List<Photo> photos),
    @required Result error(dynamic error),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return start(page);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(int page),
    Result successful(List<Photo> photos),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(GetPhotosStart value),
    @required Result successful(GetPhotosSuccessful value),
    @required Result error(GetPhotosError value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return start(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(GetPhotosStart value),
    Result successful(GetPhotosSuccessful value),
    Result error(GetPhotosError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class GetPhotosStart implements GetPhotos {
  const factory GetPhotosStart(int page) = _$GetPhotosStart;

  int get page;
  $GetPhotosStartCopyWith<GetPhotosStart> get copyWith;
}

/// @nodoc
abstract class $GetPhotosSuccessfulCopyWith<$Res> {
  factory $GetPhotosSuccessfulCopyWith(GetPhotosSuccessful value, $Res Function(GetPhotosSuccessful) then) =
      _$GetPhotosSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Photo> photos});
}

/// @nodoc
class _$GetPhotosSuccessfulCopyWithImpl<$Res> extends _$GetPhotosCopyWithImpl<$Res>
    implements $GetPhotosSuccessfulCopyWith<$Res> {
  _$GetPhotosSuccessfulCopyWithImpl(GetPhotosSuccessful _value, $Res Function(GetPhotosSuccessful) _then)
      : super(_value, (v) => _then(v as GetPhotosSuccessful));

  @override
  GetPhotosSuccessful get _value => super._value as GetPhotosSuccessful;

  @override
  $Res call({
    Object photos = freezed,
  }) {
    return _then(GetPhotosSuccessful(
      photos == freezed ? _value.photos : photos as List<Photo>,
    ));
  }
}

/// @nodoc
class _$GetPhotosSuccessful implements GetPhotosSuccessful {
  const _$GetPhotosSuccessful(this.photos) : assert(photos != null);

  @override
  final List<Photo> photos;

  @override
  String toString() {
    return 'GetPhotos.successful(photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetPhotosSuccessful &&
            (identical(other.photos, photos) || const DeepCollectionEquality().equals(other.photos, photos)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(photos);

  @override
  $GetPhotosSuccessfulCopyWith<GetPhotosSuccessful> get copyWith =>
      _$GetPhotosSuccessfulCopyWithImpl<GetPhotosSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(int page),
    @required Result successful(List<Photo> photos),
    @required Result error(dynamic error),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return successful(photos);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(int page),
    Result successful(List<Photo> photos),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(photos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(GetPhotosStart value),
    @required Result successful(GetPhotosSuccessful value),
    @required Result error(GetPhotosError value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(GetPhotosStart value),
    Result successful(GetPhotosSuccessful value),
    Result error(GetPhotosError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetPhotosSuccessful implements GetPhotos {
  const factory GetPhotosSuccessful(List<Photo> photos) = _$GetPhotosSuccessful;

  List<Photo> get photos;
  $GetPhotosSuccessfulCopyWith<GetPhotosSuccessful> get copyWith;
}

/// @nodoc
abstract class $GetPhotosErrorCopyWith<$Res> {
  factory $GetPhotosErrorCopyWith(GetPhotosError value, $Res Function(GetPhotosError) then) =
      _$GetPhotosErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class _$GetPhotosErrorCopyWithImpl<$Res> extends _$GetPhotosCopyWithImpl<$Res>
    implements $GetPhotosErrorCopyWith<$Res> {
  _$GetPhotosErrorCopyWithImpl(GetPhotosError _value, $Res Function(GetPhotosError) _then)
      : super(_value, (v) => _then(v as GetPhotosError));

  @override
  GetPhotosError get _value => super._value as GetPhotosError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetPhotosError(
      error == freezed ? _value.error : error as dynamic,
    ));
  }
}

/// @nodoc
class _$GetPhotosError implements GetPhotosError {
  const _$GetPhotosError(this.error) : assert(error != null);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'GetPhotos.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetPhotosError &&
            (identical(other.error, error) || const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetPhotosErrorCopyWith<GetPhotosError> get copyWith =>
      _$GetPhotosErrorCopyWithImpl<GetPhotosError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(int page),
    @required Result successful(List<Photo> photos),
    @required Result error(dynamic error),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(int page),
    Result successful(List<Photo> photos),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(GetPhotosStart value),
    @required Result successful(GetPhotosSuccessful value),
    @required Result error(GetPhotosError value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(GetPhotosStart value),
    Result successful(GetPhotosSuccessful value),
    Result error(GetPhotosError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetPhotosError implements GetPhotos {
  const factory GetPhotosError(dynamic error) = _$GetPhotosError;

  dynamic get error;
  $GetPhotosErrorCopyWith<GetPhotosError> get copyWith;
}

/// @nodoc
class _$SetOrientationTearOff {
  const _$SetOrientationTearOff();

// ignore: unused_element
  _SetOrientation call(@nullable String orientation) {
    return _SetOrientation(
      orientation,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SetOrientation = _$SetOrientationTearOff();

/// @nodoc
mixin _$SetOrientation {
  @nullable
  String get orientation;

  $SetOrientationCopyWith<SetOrientation> get copyWith;
}

/// @nodoc
abstract class $SetOrientationCopyWith<$Res> {
  factory $SetOrientationCopyWith(SetOrientation value, $Res Function(SetOrientation) then) =
      _$SetOrientationCopyWithImpl<$Res>;
  $Res call({@nullable String orientation});
}

/// @nodoc
class _$SetOrientationCopyWithImpl<$Res> implements $SetOrientationCopyWith<$Res> {
  _$SetOrientationCopyWithImpl(this._value, this._then);

  final SetOrientation _value;
  // ignore: unused_field
  final $Res Function(SetOrientation) _then;

  @override
  $Res call({
    Object orientation = freezed,
  }) {
    return _then(_value.copyWith(
      orientation: orientation == freezed ? _value.orientation : orientation as String,
    ));
  }
}

/// @nodoc
abstract class _$SetOrientationCopyWith<$Res> implements $SetOrientationCopyWith<$Res> {
  factory _$SetOrientationCopyWith(_SetOrientation value, $Res Function(_SetOrientation) then) =
      __$SetOrientationCopyWithImpl<$Res>;
  @override
  $Res call({@nullable String orientation});
}

/// @nodoc
class __$SetOrientationCopyWithImpl<$Res> extends _$SetOrientationCopyWithImpl<$Res>
    implements _$SetOrientationCopyWith<$Res> {
  __$SetOrientationCopyWithImpl(_SetOrientation _value, $Res Function(_SetOrientation) _then)
      : super(_value, (v) => _then(v as _SetOrientation));

  @override
  _SetOrientation get _value => super._value as _SetOrientation;

  @override
  $Res call({
    Object orientation = freezed,
  }) {
    return _then(_SetOrientation(
      orientation == freezed ? _value.orientation : orientation as String,
    ));
  }
}

/// @nodoc
class _$_SetOrientation implements _SetOrientation {
  const _$_SetOrientation(@nullable this.orientation);

  @override
  @nullable
  final String orientation;

  @override
  String toString() {
    return 'SetOrientation(orientation: $orientation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetOrientation &&
            (identical(other.orientation, orientation) ||
                const DeepCollectionEquality().equals(other.orientation, orientation)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(orientation);

  @override
  _$SetOrientationCopyWith<_SetOrientation> get copyWith =>
      __$SetOrientationCopyWithImpl<_SetOrientation>(this, _$identity);
}

abstract class _SetOrientation implements SetOrientation {
  const factory _SetOrientation(@nullable String orientation) = _$_SetOrientation;

  @override
  @nullable
  String get orientation;
  @override
  _$SetOrientationCopyWith<_SetOrientation> get copyWith;
}

/// @nodoc
class _$SetQueryTearOff {
  const _$SetQueryTearOff();

// ignore: unused_element
  _SetQuery call(@nullable String query) {
    return _SetQuery(
      query,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SetQuery = _$SetQueryTearOff();

/// @nodoc
mixin _$SetQuery {
  @nullable
  String get query;

  $SetQueryCopyWith<SetQuery> get copyWith;
}

/// @nodoc
abstract class $SetQueryCopyWith<$Res> {
  factory $SetQueryCopyWith(SetQuery value, $Res Function(SetQuery) then) = _$SetQueryCopyWithImpl<$Res>;
  $Res call({@nullable String query});
}

/// @nodoc
class _$SetQueryCopyWithImpl<$Res> implements $SetQueryCopyWith<$Res> {
  _$SetQueryCopyWithImpl(this._value, this._then);

  final SetQuery _value;
  // ignore: unused_field
  final $Res Function(SetQuery) _then;

  @override
  $Res call({
    Object query = freezed,
  }) {
    return _then(_value.copyWith(
      query: query == freezed ? _value.query : query as String,
    ));
  }
}

/// @nodoc
abstract class _$SetQueryCopyWith<$Res> implements $SetQueryCopyWith<$Res> {
  factory _$SetQueryCopyWith(_SetQuery value, $Res Function(_SetQuery) then) = __$SetQueryCopyWithImpl<$Res>;
  @override
  $Res call({@nullable String query});
}

/// @nodoc
class __$SetQueryCopyWithImpl<$Res> extends _$SetQueryCopyWithImpl<$Res> implements _$SetQueryCopyWith<$Res> {
  __$SetQueryCopyWithImpl(_SetQuery _value, $Res Function(_SetQuery) _then)
      : super(_value, (v) => _then(v as _SetQuery));

  @override
  _SetQuery get _value => super._value as _SetQuery;

  @override
  $Res call({
    Object query = freezed,
  }) {
    return _then(_SetQuery(
      query == freezed ? _value.query : query as String,
    ));
  }
}

/// @nodoc
class _$_SetQuery implements _SetQuery {
  const _$_SetQuery(@nullable this.query);

  @override
  @nullable
  final String query;

  @override
  String toString() {
    return 'SetQuery(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetQuery &&
            (identical(other.query, query) || const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @override
  _$SetQueryCopyWith<_SetQuery> get copyWith => __$SetQueryCopyWithImpl<_SetQuery>(this, _$identity);
}

abstract class _SetQuery implements SetQuery {
  const factory _SetQuery(@nullable String query) = _$_SetQuery;

  @override
  @nullable
  String get query;
  @override
  _$SetQueryCopyWith<_SetQuery> get copyWith;
}

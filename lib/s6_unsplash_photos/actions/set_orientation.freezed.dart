// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of set_orientation;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

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

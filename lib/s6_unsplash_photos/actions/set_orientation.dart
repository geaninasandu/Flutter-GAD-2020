library set_orientation;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_orientation.freezed.dart';

@freezed
abstract class SetOrientation with _$SetOrientation {
  const factory SetOrientation(@nullable String orientation) = _SetOrientation;
}

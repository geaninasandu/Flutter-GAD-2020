library url;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_gad_2020/s6_unsplash_photos/models/serializers.dart';

part 'url.g.dart';

abstract class Url implements Built<Url, UrlBuilder> {
  factory Url([void Function(UrlBuilder b) updates]) = _$Url;

  factory Url.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  Url._();

  String get regular;

  static Serializer<Url> get serializer => _$urlSerializer;
}

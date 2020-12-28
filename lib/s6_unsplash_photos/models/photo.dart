library photo;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_gad_2020/s6_unsplash_photos/models/serializers.dart';
import 'package:flutter_gad_2020/s6_unsplash_photos/models/url.dart';

part 'photo.g.dart';

abstract class Photo implements Built<Photo, PhotoBuilder> {
  factory Photo([void Function(PhotoBuilder b) updates]) = _$Photo;

  factory Photo.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  Photo._();

  Url get urls;

  static Serializer<Photo> get serializer => _$photoSerializer;
}

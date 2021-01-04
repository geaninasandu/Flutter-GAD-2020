part of models;

abstract class Url implements Built<Url, UrlBuilder> {
  factory Url([void Function(UrlBuilder b) updates]) = _$Url;

  factory Url.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  Url._();

  String get regular;

  static Serializer<Url> get serializer => _$urlSerializer;
}

library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:flutter_gad_2020/s6_unsplash_photos/models/photo.dart';
import 'package:flutter_gad_2020/s6_unsplash_photos/models/url.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  Photo,
  Url,
])
Serializers serializers = (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

library get_photos;

import 'package:flutter_gad_2020/s6_unsplash_photos/models/photo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_photos.freezed.dart';

@freezed
abstract class GetPhotos with _$GetPhotos {
  const factory GetPhotos.start(int page) = GetPhotosStart;

  const factory GetPhotos.successful(List<Photo> photos) = GetPhotosSuccessful;

  const factory GetPhotos.error(dynamic error) = GetPhotosError;
}

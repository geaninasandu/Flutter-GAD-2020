part of actions;

@freezed
abstract class GetPhotos with _$GetPhotos {
  const factory GetPhotos.start(int page) = GetPhotosStart;

  const factory GetPhotos.successful(List<Photo> photos) = GetPhotosSuccessful;

  const factory GetPhotos.error(dynamic error) = GetPhotosError;
}

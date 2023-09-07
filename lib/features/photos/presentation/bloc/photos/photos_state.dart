part of 'photos_bloc.dart';

@freezed
class PhotosState with _$PhotosState {
  factory PhotosState.loading({
    required ISet<Photo> photo,
    int? currentPage,
    String? nextLink,
  }) = _Loading;
  factory PhotosState.loaded({
    required ISet<Photo> photos,
    int? currentPage,
    String? nextLink,
  }) = _Loaded;
  factory PhotosState.error({
    required ISet<Photo> photo,
    int? currentPage,
    String? nextLink,
    String? errorMessage,
  }) = _Error;
}

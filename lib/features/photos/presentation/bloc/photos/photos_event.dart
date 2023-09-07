part of 'photos_bloc.dart';

@freezed
class PhotosEvent with _$PhotosEvent {
  factory PhotosEvent.getPagedPhotos(int page) = _GetPagedPhotos;
}

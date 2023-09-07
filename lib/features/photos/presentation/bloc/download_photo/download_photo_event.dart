part of 'download_photo_bloc.dart';

@freezed
class DownloadPhotoEvent with _$DownloadPhotoEvent {
  factory DownloadPhotoEvent.downloadImage(String url) = _DownloadImage;
}

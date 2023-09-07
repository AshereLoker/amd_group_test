part of 'download_photo_bloc.dart';

@freezed
class DownloadPhotoState with _$DownloadPhotoState {
  factory DownloadPhotoState.idle() = _Idle;
  factory DownloadPhotoState.success() = _Success;
  factory DownloadPhotoState.error(String? message) = _Error;
}

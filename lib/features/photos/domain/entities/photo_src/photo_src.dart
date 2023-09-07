import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_src.freezed.dart';

@freezed
class PhotoSrc with _$PhotoSrc {
  factory PhotoSrc({
    required String original,
    required String large2x,
    required String large,
    required String medium,
    required String small,
    required String portrait,
    required String landscape,
    required String tiny,
  }) = _PhotoSrc;
}
 
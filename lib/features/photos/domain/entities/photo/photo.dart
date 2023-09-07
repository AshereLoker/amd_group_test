
import 'package:amd_group_test/features/photos/domain/entities/photo_src/photo_src.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo.freezed.dart';

@freezed
class Photo with _$Photo {
  factory Photo({
    required int id,
    required int width,
    required int height,
    required String url,
    required String photographer,
    required String photographerUrl,
    required int photographerId,
    required PhotoSrc src,
    required String avgColor,
    required bool liked,
    String? alt,
  }) = _Photo;
}

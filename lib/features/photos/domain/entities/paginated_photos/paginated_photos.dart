

import 'package:amd_group_test/features/photos/domain/entities/photo/photo.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_photos.freezed.dart';

@freezed
class PaginatedPhotos with _$PaginatedPhotos {
  factory PaginatedPhotos({
    required IList<Photo> photos,
    required int page,
    required int perPage,
    required int totalResults,
    String? nextPage,
    String? prevPage,
  }) = _PaginatedPhotos;
}

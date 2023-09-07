import 'package:amd_group_test/features/photos/data/mappers/photo_mapper.dart';
import 'package:amd_group_test/features/photos/data/models/paginated_photos_model/paginated_photos_model.dart';
import 'package:amd_group_test/features/photos/domain/entities/paginated_photos/paginated_photos.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

extension PaginatedPhotosMapper on PaginatedPhotosModel {
  PaginatedPhotos toEntity() => PaginatedPhotos(
        photos: photos.map((model) => model.toEntity()).toIList(),
        page: page,
        perPage: perPage,
        totalResults: totalResults,
        nextPage: nextPage,
        prevPage: prevPage,
      );
}

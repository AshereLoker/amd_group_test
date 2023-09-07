

// ignore: one_member_abstracts
import 'package:amd_group_test/features/photos/domain/entities/paginated_photos/paginated_photos.dart';

abstract class PhotosRemoteDatasource {
  Future<PaginatedPhotos> getPagedPhotos(int page);
}

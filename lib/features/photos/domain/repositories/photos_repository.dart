import 'package:amd_group_test/core/core.dart';
import 'package:amd_group_test/features/photos/domain/entities/paginated_photos/paginated_photos.dart';
import 'package:amd_group_test/features/photos/domain/usecases/download_photo.dart';
import 'package:amd_group_test/features/photos/domain/usecases/get_paged_photos.dart';
import 'package:either_dart/either.dart';

abstract class PhotosRepository {
  Future<Either<Failure, void>> downloadPhoto(DownloadPhotoParams params);
  Future<Either<Failure, PaginatedPhotos>> getPagedPhotos(
    GetPagedPhotosParams params,
  );
}

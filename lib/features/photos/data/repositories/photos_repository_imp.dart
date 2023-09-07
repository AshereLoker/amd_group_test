import 'package:amd_group_test/core/core.dart';
import 'package:amd_group_test/features/photos/data/datasources/photos_remote_datasource.dart';
import 'package:amd_group_test/features/photos/data/services/download_photo_service.dart';
import 'package:amd_group_test/features/photos/domain/entities/paginated_photos/paginated_photos.dart';
import 'package:amd_group_test/features/photos/domain/repositories/photos_repository.dart';
import 'package:amd_group_test/features/photos/domain/usecases/download_photo.dart';
import 'package:amd_group_test/features/photos/domain/usecases/get_paged_photos.dart';

import 'package:either_dart/either.dart';

class PhotosRepositoryImpl implements PhotosRepository {
  final DownloadPhotoService downloadService;
  final PhotosRemoteDatasource remoteDatasource;

  const PhotosRepositoryImpl(this.downloadService, this.remoteDatasource);

  @override
  Future<Either<Failure, void>> downloadPhoto(
    DownloadPhotoParams params,
  ) async {
    try {
      final repsonse = await downloadService.downloadByUrl(params.photoUrl);

      return Right(repsonse);
    } on Exception catch (e, trace) {
      AppLogger.logError(error: e, stackTrace: trace);

      return Left(DownloadServiceFailure());
    }
  }

  @override
  Future<Either<Failure, PaginatedPhotos>> getPagedPhotos(
    GetPagedPhotosParams params,
  ) async {
    try {
      final response = await remoteDatasource.getPagedPhotos(params.page);

      return Right(response);
    } on BadRequestError catch (e, trace) {
      return Left(_onGetPageError(e, trace, e.errMessage!));
    } on UnauthorizedError catch (e, trace) {
      return Left(_onGetPageError(e, trace, e.errMessage!));
    } on ForbiddenError catch (e, trace) {
      return Left(_onGetPageError(e, trace, e.errMessage!));
    } on NotFoundError catch (e, trace) {
      return Left(_onGetPageError(e, trace, e.errMessage!));
    } on TooManyRequestError catch (e, trace) {
      return Left(_onGetPageError(e, trace, e.errMessage!));
    } on ServerUnavailableError catch (e, trace) {
      return Left(_onGetPageError(e, trace, e.errMessage!));
    } on ServerTemporaryUnavailableError catch (e, trace) {
      return Left(_onGetPageError(e, trace, e.errMessage!));
    } on UnknowError catch (e, trace) {
      return Left(_onGetPageError(e, trace, e.errMessage!));
    }
  }

  Failure _onGetPageError(
    Exception e,
    StackTrace trace,
    String message,
  ) {
    AppLogger.logError(error: e, stackTrace: trace);

    return PhotosRemoteDatasourceFailure(message);
  }
}

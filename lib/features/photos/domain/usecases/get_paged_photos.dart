import 'package:amd_group_test/core/core.dart';
import 'package:amd_group_test/features/photos/domain/entities/paginated_photos/paginated_photos.dart';
import 'package:amd_group_test/features/photos/domain/repositories/photos_repository.dart';
import 'package:either_dart/either.dart';

import 'package:equatable/equatable.dart';

class GetPagedPhotos extends UseCase<PaginatedPhotos, GetPagedPhotosParams> {
  final PhotosRepository repository;

  const GetPagedPhotos(this.repository);

  @override
  Future<Either<Failure, PaginatedPhotos>> call(
    GetPagedPhotosParams params,
  ) async =>
      await repository.getPagedPhotos(params);
}

class GetPagedPhotosParams extends Equatable {
  final int page;

  const GetPagedPhotosParams(this.page);

  @override
  List<Object?> get props => [];
}

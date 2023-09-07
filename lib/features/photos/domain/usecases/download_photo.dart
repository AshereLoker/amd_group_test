import 'package:amd_group_test/core/core.dart';
import 'package:amd_group_test/features/photos/domain/repositories/photos_repository.dart';

import 'package:either_dart/either.dart';

import 'package:equatable/equatable.dart';

class DownloadPhoto extends UseCase<void, DownloadPhotoParams> {
  final PhotosRepository repository;

  const DownloadPhoto(this.repository);

  @override
  Future<Either<Failure, void>> call(DownloadPhotoParams params) async =>
      await repository.downloadPhoto(params);
}

class DownloadPhotoParams extends Equatable {
  final String photoUrl;

  const DownloadPhotoParams(this.photoUrl);

  @override
  List<Object?> get props => [photoUrl];
}

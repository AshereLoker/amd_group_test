import 'package:amd_group_test/constants/api_constants.dart';
import 'package:amd_group_test/core/core.dart';
import 'package:amd_group_test/features/photos/data/datasources/photos_remote_datasource.dart';
import 'package:amd_group_test/features/photos/data/mappers/paginated_photos_mapper.dart';
import 'package:amd_group_test/features/photos/data/models/paginated_photos_model/paginated_photos_model.dart';
import 'package:amd_group_test/features/photos/domain/entities/paginated_photos/paginated_photos.dart';

import 'package:dio/dio.dart';

class PexelsPhotoRemoteDatasourceImpl implements PhotosRemoteDatasource {
  final Dio _dio;

  PexelsPhotoRemoteDatasourceImpl(this._dio);

  @override
  Future<PaginatedPhotos> getPagedPhotos(int page) =>
      RequestHandler.sendRequest<PaginatedPhotos, Map<String, dynamic>>(
        request: () => _dio.get(ApiConstants.pagedPhotos(page)),
        converter: (map) => PaginatedPhotosModel.fromJson(map).toEntity(),
      );
}

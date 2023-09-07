// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_photos_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedPhotosModel _$PaginatedPhotosModelFromJson(
        Map<String, dynamic> json) =>
    PaginatedPhotosModel(
      photos: (json['photos'] as List<dynamic>)
          .map((e) => PhotoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: json['page'] as int,
      perPage: json['per_page'] as int,
      totalResults: json['total_results'] as int,
      nextPage: json['next_page'] as String?,
      prevPage: json['prev_page'] as String?,
    );

Map<String, dynamic> _$PaginatedPhotosModelToJson(
        PaginatedPhotosModel instance) =>
    <String, dynamic>{
      'photos': instance.photos,
      'page': instance.page,
      'per_page': instance.perPage,
      'total_results': instance.totalResults,
      'next_page': instance.nextPage,
      'prev_page': instance.prevPage,
    };

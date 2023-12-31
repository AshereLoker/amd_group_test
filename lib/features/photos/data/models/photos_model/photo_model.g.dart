// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhotoModel _$PhotoModelFromJson(Map<String, dynamic> json) => PhotoModel(
      id: json['id'] as int,
      width: json['width'] as int,
      height: json['height'] as int,
      url: json['url'] as String,
      photographer: json['photographer'] as String,
      photographerUrl: json['photographer_url'] as String,
      photographerId: json['photographer_id'] as int,
      src: PhotoSrcModel.fromJson(json['src'] as Map<String, dynamic>),
      avgColor: json['avg_color'] as String,
      liked: json['liked'] as bool,
      alt: json['alt'] as String?,
    );

Map<String, dynamic> _$PhotoModelToJson(PhotoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'width': instance.width,
      'height': instance.height,
      'url': instance.url,
      'photographer': instance.photographer,
      'photographer_url': instance.photographerUrl,
      'photographer_id': instance.photographerId,
      'src': instance.src,
      'avg_color': instance.avgColor,
      'liked': instance.liked,
      'alt': instance.alt,
    };

Map<String, dynamic> _$$_PhotoModelToJson(_$_PhotoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'width': instance.width,
      'height': instance.height,
      'url': instance.url,
      'photographer': instance.photographer,
      'photographer_url': instance.photographerUrl,
      'photographer_id': instance.photographerId,
      'src': instance.src,
      'avg_color': instance.avgColor,
      'liked': instance.liked,
      'alt': instance.alt,
    };



import 'package:amd_group_test/features/photos/data/models/photo_src_model/photo_src_model.dart';
import 'package:amd_group_test/features/photos/data/models/photos_model/photo_model.dart';
import 'package:amd_group_test/features/photos/domain/entities/photo/photo.dart';
import 'package:amd_group_test/features/photos/domain/entities/photo_src/photo_src.dart';

extension PhotoMapper on PhotoModel {
  Photo toEntity() => Photo(
        id: id,
        width: width,
        height: height,
        url: url,
        photographer: photographer,
        photographerUrl: photographerUrl,
        photographerId: photographerId,
        src: src.toEntity(),
        avgColor: avgColor,
        liked: liked,
      );
}

extension PhotoModelMapper on Photo {
  PhotoModel toModel() => PhotoModel(
        id: id,
        width: width,
        height: height,
        url: url,
        photographer: photographer,
        photographerUrl: photographerUrl,
        photographerId: photographerId,
        src: src.toModel(),
        avgColor: avgColor,
        liked: liked,
      );
}

extension PhotoSrcMapper on PhotoSrcModel {
  PhotoSrc toEntity() => PhotoSrc(
        original: original,
        large2x: large2x,
        large: large,
        medium: medium,
        small: small,
        portrait: portrait,
        landscape: landscape,
        tiny: tiny,
      );
}

extension PhotoSrcModelMapper on PhotoSrc {
  PhotoSrcModel toModel() => PhotoSrcModel(
        original: original,
        large2x: large2x,
        large: large,
        medium: medium,
        small: small,
        portrait: portrait,
        landscape: landscape,
        tiny: tiny,
      );
}

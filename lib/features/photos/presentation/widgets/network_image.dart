import 'package:amd_group_test/features/photos/domain/entities/photo/photo.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

enum ImageType { small, full }

class LocalNetworkImage extends StatelessWidget {
  const LocalNetworkImage({
    super.key,
    required this.photo,
    required this.type,
  });

  final ImageType type;
  final Photo photo;

  @override
  Widget build(BuildContext context) => Center(
        child: CachedNetworkImage(
          progressIndicatorBuilder: (context, url, progress) =>
              CircularProgressIndicator(
            value: progress.progress,
          ),
          imageBuilder: (context, imageProvider) => Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              border: Border.fromBorderSide(BorderSide()),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              child: Image(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
            ),
          ),
          imageUrl:
              type == ImageType.full ? photo.src.original : photo.src.medium,
        ),
      );
}

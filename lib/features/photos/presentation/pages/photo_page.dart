import 'package:amd_group_test/features/photos/domain/entities/photo/photo.dart';
import 'package:amd_group_test/features/photos/presentation/bloc/photos/photos_bloc.dart';
import 'package:amd_group_test/features/photos/presentation/pages/full_photo_page.dart';
import 'package:amd_group_test/features/photos/presentation/widgets/network_image.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PhotoPage extends StatelessWidget {
  const PhotoPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          top: true,
          bottom: true,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: BlocBuilder<PhotosBloc, PhotosState>(
              builder: (context, state) => state.when(
                loading: (photos, __, ___) {
                  if (photos.isEmpty) {
                    context
                        .read<PhotosBloc>()
                        .add(PhotosEvent.getPagedPhotos(1));

                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  return Stack(
                    children: [
                      const Center(
                        child: CircularProgressIndicator(),
                      ),
                      _Content(photos),
                    ],
                  );
                },
                loaded: (photos, page, nextLink) =>
                    NotificationListener<ScrollNotification>(
                  onNotification: (scrollNotification) => _onNotification(
                    context,
                    scrollNotification,
                    nextLink,
                    page,
                  ),
                  child: _Content(photos),
                ),
                error: (photos, __, ___, ____) => _Content(photos),
              ),
            ),
          ),
        ),
      );

  bool _onNotification(BuildContext context, ScrollNotification notification,
      String? nextLink, int? page) {
    if (notification.metrics.pixels == notification.metrics.maxScrollExtent) {
      if (nextLink != null && page != null) {
        context.read<PhotosBloc>().add(
              PhotosEvent.getPagedPhotos(page + 1),
            );
      }

      return true;
    }

    return false;
  }
}

class _Content extends StatelessWidget {
  final ISet<Photo> photos;

  const _Content(this.photos);

  @override
  Widget build(BuildContext context) => GridView.builder(
        itemCount: photos.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => FullPhotoPage(
              photo: photos[index],
            ),
          )),
          child: Hero(
            tag: photos[index].id,
            child: LocalNetworkImage(
              photo: photos[index],
              type: ImageType.small,
            ),
          ),
        ),
      );
}

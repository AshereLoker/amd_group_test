import 'package:amd_group_test/features/photos/domain/entities/photo/photo.dart';
import 'package:amd_group_test/features/photos/presentation/bloc/download_photo/download_photo_bloc.dart';
import 'package:amd_group_test/features/photos/presentation/widgets/network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FullPhotoPage extends StatelessWidget {
  final Photo photo;

  const FullPhotoPage({
    super.key,
    required this.photo,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          top: true,
          bottom: true,
          child: BlocListener<DownloadPhotoBloc, DownloadPhotoState>(
            listener: (context, state) => state.whenOrNull(
              success: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Download success')),
              ),
              error: (_) => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Download failure. Try again')),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Hero(
                    tag: photo.id,
                    child: LocalNetworkImage(
                      photo: photo,
                      type: ImageType.full,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => context.read<DownloadPhotoBloc>().add(
                          DownloadPhotoEvent.downloadImage(photo.src.original),
                        ),
                    child: const Text('Download'),
                  )
                ],
              ),
            ),
          ),
        ),
      );
}

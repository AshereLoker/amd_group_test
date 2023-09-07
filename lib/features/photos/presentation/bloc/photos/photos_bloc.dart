import 'dart:convert';
import 'package:amd_group_test/features/photos/data/mappers/photo_mapper.dart';
import 'package:amd_group_test/features/photos/data/models/photos_model/photo_model.dart';
import 'package:amd_group_test/features/photos/domain/entities/photo/photo.dart';
import 'package:amd_group_test/features/photos/domain/usecases/get_paged_photos.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'photos_bloc.freezed.dart';
part 'photos_event.dart';
part 'photos_state.dart';

typedef _Emit = Emitter<PhotosState>;

class PhotosBloc extends HydratedBloc<PhotosEvent, PhotosState> {
  final GetPagedPhotos usecase;

  PhotosBloc(this.usecase)
      : super(PhotosState.loading(
          photo: const ISetConst({}),
        )) {
    on<_GetPagedPhotos>(_onGetPagedPhotos);
  }

  Future<void> _onGetPagedPhotos(_GetPagedPhotos event, _Emit emit) async {
    final result = await usecase.call(GetPagedPhotosParams(event.page));

    if (result.isLeft) {
      emit(
        PhotosState.error(
          photo: _getPhotoFromState(),
          nextLink: _getLinkFromState(),
          currentPage: _getPageFromState(),
          errorMessage: result.left.message,
        ),
      );
    }

    emit(
      PhotosState.loaded(
        photos:
            ISet([..._getPhotoFromState(), ...result.right.photos.toISet()]),
        nextLink: result.right.nextPage,
        currentPage: result.right.page,
      ),
    );
  }

  ISet<Photo> _getPhotoFromState() => state.when(
        loading: (photo, _, __) => photo,
        loaded: (photo, _, __) => photo,
        error: (photo, _, __, ___) => photo,
      );

  String? _getLinkFromState() => state.when(
        loading: (_, __, link) => link,
        loaded: (__, _, link) => link,
        error: (__, _, link, ___) => link,
      );

  int? _getPageFromState() => state.when(
        loading: (_, page, __) => page,
        loaded: (_, page, __) => page,
        error: (_, page, __, ___) => page,
      );

  @override
  PhotosState? fromJson(Map<String, dynamic> json) {
    final photos = (jsonDecode(json['photos']) as List<dynamic>)
        .map(
          (e) => PhotoModel.fromJson(e).toEntity(),
        )
        .toSet()
        .lock;

    return PhotosState.loaded(
      photos: photos,
      nextLink: json['next_link'],
    );
  }

  @override
  Map<String, dynamic>? toJson(PhotosState state) {
    if (state is _Loaded) {
      final map = {
        'photos': jsonEncode(
          state.photos.map((photo) => photo.toModel()).toList(),
        ),
        'next_link': _getLinkFromState(),
        'current_page': _getPageFromState(),
      };
      return map;
    }

    return null;
  }
}

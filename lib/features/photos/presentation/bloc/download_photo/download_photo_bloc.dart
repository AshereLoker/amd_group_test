
import 'package:amd_group_test/features/photos/domain/usecases/download_photo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'download_photo_bloc.freezed.dart';
part 'download_photo_event.dart';
part 'download_photo_state.dart';

typedef _Emit = Emitter<DownloadPhotoState>;

class DownloadPhotoBloc extends Bloc<DownloadPhotoEvent, DownloadPhotoState> {
  final DownloadPhoto usecase;

  DownloadPhotoBloc(this.usecase) : super(DownloadPhotoState.idle()) {
    on<_DownloadImage>(_onDownloadImage);
  }

  Future<void> _onDownloadImage(_DownloadImage event, _Emit emit) async {
    final result = await usecase.call(DownloadPhotoParams(event.url));

    if (result.isLeft) {
      emit(DownloadPhotoState.error('Something goes wrong. Try again'));
      emit(DownloadPhotoState.idle());

      return;
    }

    emit(DownloadPhotoState.success());
    emit(DownloadPhotoState.idle());
  }
}

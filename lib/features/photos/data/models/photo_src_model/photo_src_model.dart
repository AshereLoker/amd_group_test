import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_src_model.freezed.dart';
part 'photo_src_model.g.dart';

@Freezed(toJson: true, fromJson: false)
@JsonSerializable(createToJson: true)
class PhotoSrcModel with _$PhotoSrcModel {
  factory PhotoSrcModel({
    required String original,
    required String large2x,
    required String large,
    required String medium,
    required String small,
    required String portrait,
    required String landscape,
    required String tiny,
  }) = _PhotoSrcModel;

  factory PhotoSrcModel.fromJson(Map<String, dynamic> json) =>
      _$PhotoSrcModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PhotoSrcModelToJson(this);
}

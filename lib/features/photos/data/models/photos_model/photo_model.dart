
import 'package:amd_group_test/features/photos/data/models/photo_src_model/photo_src_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_model.freezed.dart';
part 'photo_model.g.dart';

@Freezed(toJson: true, fromJson: false)
@JsonSerializable(createToJson: true)
class PhotoModel with _$PhotoModel {
  factory PhotoModel({
    required int id,
    required int width,
    required int height,
    required String url,
    required String photographer,
    @JsonKey(name: 'photographer_url') required String photographerUrl,
    @JsonKey(name: 'photographer_id') required int photographerId,
    required PhotoSrcModel src,
    @JsonKey(name: 'avg_color') required String avgColor,
    required bool liked,
    String? alt,
  }) = _PhotoModel;

  factory PhotoModel.fromJson(Map<String, dynamic> json) =>
      _$PhotoModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PhotoModelToJson(this);
}

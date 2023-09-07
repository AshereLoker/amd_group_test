import 'package:amd_group_test/features/photos/data/models/photos_model/photo_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_photos_model.freezed.dart';
part 'paginated_photos_model.g.dart';

@Freezed(toJson: false, fromJson: false)
@JsonSerializable()
class PaginatedPhotosModel with _$PaginatedPhotosModel {
  factory PaginatedPhotosModel({
    required List<PhotoModel> photos,
    required int page,
    @JsonKey(name: 'per_page') required int perPage,
    @JsonKey(name: 'total_results') required int totalResults,
    @JsonKey(name: 'next_page') String? nextPage,
    @JsonKey(name: 'prev_page') String? prevPage,
  }) = _PaginatedPhotosModel;

  factory PaginatedPhotosModel.fromJson(Map<String, dynamic> json) =>
      _$PaginatedPhotosModelFromJson(json);
}

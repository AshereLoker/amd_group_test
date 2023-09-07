// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_photos_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaginatedPhotosModel {
  List<PhotoModel> get photos => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int get totalResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_page')
  String? get nextPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'prev_page')
  String? get prevPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginatedPhotosModelCopyWith<PaginatedPhotosModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedPhotosModelCopyWith<$Res> {
  factory $PaginatedPhotosModelCopyWith(PaginatedPhotosModel value,
          $Res Function(PaginatedPhotosModel) then) =
      _$PaginatedPhotosModelCopyWithImpl<$Res, PaginatedPhotosModel>;
  @useResult
  $Res call(
      {List<PhotoModel> photos,
      int page,
      @JsonKey(name: 'per_page') int perPage,
      @JsonKey(name: 'total_results') int totalResults,
      @JsonKey(name: 'next_page') String? nextPage,
      @JsonKey(name: 'prev_page') String? prevPage});
}

/// @nodoc
class _$PaginatedPhotosModelCopyWithImpl<$Res,
        $Val extends PaginatedPhotosModel>
    implements $PaginatedPhotosModelCopyWith<$Res> {
  _$PaginatedPhotosModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
    Object? page = null,
    Object? perPage = null,
    Object? totalResults = null,
    Object? nextPage = freezed,
    Object? prevPage = freezed,
  }) {
    return _then(_value.copyWith(
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PhotoModel>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as String?,
      prevPage: freezed == prevPage
          ? _value.prevPage
          : prevPage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaginatedPhotosModelCopyWith<$Res>
    implements $PaginatedPhotosModelCopyWith<$Res> {
  factory _$$_PaginatedPhotosModelCopyWith(_$_PaginatedPhotosModel value,
          $Res Function(_$_PaginatedPhotosModel) then) =
      __$$_PaginatedPhotosModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PhotoModel> photos,
      int page,
      @JsonKey(name: 'per_page') int perPage,
      @JsonKey(name: 'total_results') int totalResults,
      @JsonKey(name: 'next_page') String? nextPage,
      @JsonKey(name: 'prev_page') String? prevPage});
}

/// @nodoc
class __$$_PaginatedPhotosModelCopyWithImpl<$Res>
    extends _$PaginatedPhotosModelCopyWithImpl<$Res, _$_PaginatedPhotosModel>
    implements _$$_PaginatedPhotosModelCopyWith<$Res> {
  __$$_PaginatedPhotosModelCopyWithImpl(_$_PaginatedPhotosModel _value,
      $Res Function(_$_PaginatedPhotosModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
    Object? page = null,
    Object? perPage = null,
    Object? totalResults = null,
    Object? nextPage = freezed,
    Object? prevPage = freezed,
  }) {
    return _then(_$_PaginatedPhotosModel(
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PhotoModel>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as String?,
      prevPage: freezed == prevPage
          ? _value.prevPage
          : prevPage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PaginatedPhotosModel implements _PaginatedPhotosModel {
  _$_PaginatedPhotosModel(
      {required final List<PhotoModel> photos,
      required this.page,
      @JsonKey(name: 'per_page') required this.perPage,
      @JsonKey(name: 'total_results') required this.totalResults,
      @JsonKey(name: 'next_page') this.nextPage,
      @JsonKey(name: 'prev_page') this.prevPage})
      : _photos = photos;

  final List<PhotoModel> _photos;
  @override
  List<PhotoModel> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  final int page;
  @override
  @JsonKey(name: 'per_page')
  final int perPage;
  @override
  @JsonKey(name: 'total_results')
  final int totalResults;
  @override
  @JsonKey(name: 'next_page')
  final String? nextPage;
  @override
  @JsonKey(name: 'prev_page')
  final String? prevPage;

  @override
  String toString() {
    return 'PaginatedPhotosModel(photos: $photos, page: $page, perPage: $perPage, totalResults: $totalResults, nextPage: $nextPage, prevPage: $prevPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginatedPhotosModel &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            (identical(other.prevPage, prevPage) ||
                other.prevPage == prevPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_photos),
      page,
      perPage,
      totalResults,
      nextPage,
      prevPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginatedPhotosModelCopyWith<_$_PaginatedPhotosModel> get copyWith =>
      __$$_PaginatedPhotosModelCopyWithImpl<_$_PaginatedPhotosModel>(
          this, _$identity);
}

abstract class _PaginatedPhotosModel implements PaginatedPhotosModel {
  factory _PaginatedPhotosModel(
          {required final List<PhotoModel> photos,
          required final int page,
          @JsonKey(name: 'per_page') required final int perPage,
          @JsonKey(name: 'total_results') required final int totalResults,
          @JsonKey(name: 'next_page') final String? nextPage,
          @JsonKey(name: 'prev_page') final String? prevPage}) =
      _$_PaginatedPhotosModel;

  @override
  List<PhotoModel> get photos;
  @override
  int get page;
  @override
  @JsonKey(name: 'per_page')
  int get perPage;
  @override
  @JsonKey(name: 'total_results')
  int get totalResults;
  @override
  @JsonKey(name: 'next_page')
  String? get nextPage;
  @override
  @JsonKey(name: 'prev_page')
  String? get prevPage;
  @override
  @JsonKey(ignore: true)
  _$$_PaginatedPhotosModelCopyWith<_$_PaginatedPhotosModel> get copyWith =>
      throw _privateConstructorUsedError;
}

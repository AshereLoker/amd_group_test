// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_photos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaginatedPhotos {
  IList<Photo> get photos => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get totalResults => throw _privateConstructorUsedError;
  String? get nextPage => throw _privateConstructorUsedError;
  String? get prevPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginatedPhotosCopyWith<PaginatedPhotos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedPhotosCopyWith<$Res> {
  factory $PaginatedPhotosCopyWith(
          PaginatedPhotos value, $Res Function(PaginatedPhotos) then) =
      _$PaginatedPhotosCopyWithImpl<$Res, PaginatedPhotos>;
  @useResult
  $Res call(
      {IList<Photo> photos,
      int page,
      int perPage,
      int totalResults,
      String? nextPage,
      String? prevPage});
}

/// @nodoc
class _$PaginatedPhotosCopyWithImpl<$Res, $Val extends PaginatedPhotos>
    implements $PaginatedPhotosCopyWith<$Res> {
  _$PaginatedPhotosCopyWithImpl(this._value, this._then);

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
              as IList<Photo>,
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
abstract class _$$_PaginatedPhotosCopyWith<$Res>
    implements $PaginatedPhotosCopyWith<$Res> {
  factory _$$_PaginatedPhotosCopyWith(
          _$_PaginatedPhotos value, $Res Function(_$_PaginatedPhotos) then) =
      __$$_PaginatedPhotosCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {IList<Photo> photos,
      int page,
      int perPage,
      int totalResults,
      String? nextPage,
      String? prevPage});
}

/// @nodoc
class __$$_PaginatedPhotosCopyWithImpl<$Res>
    extends _$PaginatedPhotosCopyWithImpl<$Res, _$_PaginatedPhotos>
    implements _$$_PaginatedPhotosCopyWith<$Res> {
  __$$_PaginatedPhotosCopyWithImpl(
      _$_PaginatedPhotos _value, $Res Function(_$_PaginatedPhotos) _then)
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
    return _then(_$_PaginatedPhotos(
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as IList<Photo>,
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

class _$_PaginatedPhotos implements _PaginatedPhotos {
  _$_PaginatedPhotos(
      {required this.photos,
      required this.page,
      required this.perPage,
      required this.totalResults,
      this.nextPage,
      this.prevPage});

  @override
  final IList<Photo> photos;
  @override
  final int page;
  @override
  final int perPage;
  @override
  final int totalResults;
  @override
  final String? nextPage;
  @override
  final String? prevPage;

  @override
  String toString() {
    return 'PaginatedPhotos(photos: $photos, page: $page, perPage: $perPage, totalResults: $totalResults, nextPage: $nextPage, prevPage: $prevPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginatedPhotos &&
            const DeepCollectionEquality().equals(other.photos, photos) &&
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
      const DeepCollectionEquality().hash(photos),
      page,
      perPage,
      totalResults,
      nextPage,
      prevPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginatedPhotosCopyWith<_$_PaginatedPhotos> get copyWith =>
      __$$_PaginatedPhotosCopyWithImpl<_$_PaginatedPhotos>(this, _$identity);
}

abstract class _PaginatedPhotos implements PaginatedPhotos {
  factory _PaginatedPhotos(
      {required final IList<Photo> photos,
      required final int page,
      required final int perPage,
      required final int totalResults,
      final String? nextPage,
      final String? prevPage}) = _$_PaginatedPhotos;

  @override
  IList<Photo> get photos;
  @override
  int get page;
  @override
  int get perPage;
  @override
  int get totalResults;
  @override
  String? get nextPage;
  @override
  String? get prevPage;
  @override
  @JsonKey(ignore: true)
  _$$_PaginatedPhotosCopyWith<_$_PaginatedPhotos> get copyWith =>
      throw _privateConstructorUsedError;
}

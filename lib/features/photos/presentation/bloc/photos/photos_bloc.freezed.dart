// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photos_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PhotosEvent {
  int get page => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) getPagedPhotos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? getPagedPhotos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? getPagedPhotos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPagedPhotos value) getPagedPhotos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPagedPhotos value)? getPagedPhotos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPagedPhotos value)? getPagedPhotos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhotosEventCopyWith<PhotosEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotosEventCopyWith<$Res> {
  factory $PhotosEventCopyWith(
          PhotosEvent value, $Res Function(PhotosEvent) then) =
      _$PhotosEventCopyWithImpl<$Res, PhotosEvent>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class _$PhotosEventCopyWithImpl<$Res, $Val extends PhotosEvent>
    implements $PhotosEventCopyWith<$Res> {
  _$PhotosEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetPagedPhotosCopyWith<$Res>
    implements $PhotosEventCopyWith<$Res> {
  factory _$$_GetPagedPhotosCopyWith(
          _$_GetPagedPhotos value, $Res Function(_$_GetPagedPhotos) then) =
      __$$_GetPagedPhotosCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$_GetPagedPhotosCopyWithImpl<$Res>
    extends _$PhotosEventCopyWithImpl<$Res, _$_GetPagedPhotos>
    implements _$$_GetPagedPhotosCopyWith<$Res> {
  __$$_GetPagedPhotosCopyWithImpl(
      _$_GetPagedPhotos _value, $Res Function(_$_GetPagedPhotos) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$_GetPagedPhotos(
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetPagedPhotos implements _GetPagedPhotos {
  _$_GetPagedPhotos(this.page);

  @override
  final int page;

  @override
  String toString() {
    return 'PhotosEvent.getPagedPhotos(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPagedPhotos &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetPagedPhotosCopyWith<_$_GetPagedPhotos> get copyWith =>
      __$$_GetPagedPhotosCopyWithImpl<_$_GetPagedPhotos>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) getPagedPhotos,
  }) {
    return getPagedPhotos(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? getPagedPhotos,
  }) {
    return getPagedPhotos?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? getPagedPhotos,
    required TResult orElse(),
  }) {
    if (getPagedPhotos != null) {
      return getPagedPhotos(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPagedPhotos value) getPagedPhotos,
  }) {
    return getPagedPhotos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPagedPhotos value)? getPagedPhotos,
  }) {
    return getPagedPhotos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPagedPhotos value)? getPagedPhotos,
    required TResult orElse(),
  }) {
    if (getPagedPhotos != null) {
      return getPagedPhotos(this);
    }
    return orElse();
  }
}

abstract class _GetPagedPhotos implements PhotosEvent {
  factory _GetPagedPhotos(final int page) = _$_GetPagedPhotos;

  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$_GetPagedPhotosCopyWith<_$_GetPagedPhotos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PhotosState {
  int? get currentPage => throw _privateConstructorUsedError;
  String? get nextLink => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ISet<Photo> photo, int? currentPage, String? nextLink)
        loading,
    required TResult Function(
            ISet<Photo> photos, int? currentPage, String? nextLink)
        loaded,
    required TResult Function(ISet<Photo> photo, int? currentPage,
            String? nextLink, String? errorMessage)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ISet<Photo> photo, int? currentPage, String? nextLink)?
        loading,
    TResult? Function(ISet<Photo> photos, int? currentPage, String? nextLink)?
        loaded,
    TResult? Function(ISet<Photo> photo, int? currentPage, String? nextLink,
            String? errorMessage)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ISet<Photo> photo, int? currentPage, String? nextLink)?
        loading,
    TResult Function(ISet<Photo> photos, int? currentPage, String? nextLink)?
        loaded,
    TResult Function(ISet<Photo> photo, int? currentPage, String? nextLink,
            String? errorMessage)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhotosStateCopyWith<PhotosState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotosStateCopyWith<$Res> {
  factory $PhotosStateCopyWith(
          PhotosState value, $Res Function(PhotosState) then) =
      _$PhotosStateCopyWithImpl<$Res, PhotosState>;
  @useResult
  $Res call({int? currentPage, String? nextLink});
}

/// @nodoc
class _$PhotosStateCopyWithImpl<$Res, $Val extends PhotosState>
    implements $PhotosStateCopyWith<$Res> {
  _$PhotosStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? nextLink = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      nextLink: freezed == nextLink
          ? _value.nextLink
          : nextLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> implements $PhotosStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ISet<Photo> photo, int? currentPage, String? nextLink});
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$PhotosStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = null,
    Object? currentPage = freezed,
    Object? nextLink = freezed,
  }) {
    return _then(_$_Loading(
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as ISet<Photo>,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      nextLink: freezed == nextLink
          ? _value.nextLink
          : nextLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  _$_Loading({required this.photo, this.currentPage, this.nextLink});

  @override
  final ISet<Photo> photo;
  @override
  final int? currentPage;
  @override
  final String? nextLink;

  @override
  String toString() {
    return 'PhotosState.loading(photo: $photo, currentPage: $currentPage, nextLink: $nextLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            const DeepCollectionEquality().equals(other.photo, photo) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.nextLink, nextLink) ||
                other.nextLink == nextLink));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(photo), currentPage, nextLink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ISet<Photo> photo, int? currentPage, String? nextLink)
        loading,
    required TResult Function(
            ISet<Photo> photos, int? currentPage, String? nextLink)
        loaded,
    required TResult Function(ISet<Photo> photo, int? currentPage,
            String? nextLink, String? errorMessage)
        error,
  }) {
    return loading(photo, currentPage, nextLink);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ISet<Photo> photo, int? currentPage, String? nextLink)?
        loading,
    TResult? Function(ISet<Photo> photos, int? currentPage, String? nextLink)?
        loaded,
    TResult? Function(ISet<Photo> photo, int? currentPage, String? nextLink,
            String? errorMessage)?
        error,
  }) {
    return loading?.call(photo, currentPage, nextLink);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ISet<Photo> photo, int? currentPage, String? nextLink)?
        loading,
    TResult Function(ISet<Photo> photos, int? currentPage, String? nextLink)?
        loaded,
    TResult Function(ISet<Photo> photo, int? currentPage, String? nextLink,
            String? errorMessage)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(photo, currentPage, nextLink);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PhotosState {
  factory _Loading(
      {required final ISet<Photo> photo,
      final int? currentPage,
      final String? nextLink}) = _$_Loading;

  ISet<Photo> get photo;
  @override
  int? get currentPage;
  @override
  String? get nextLink;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> implements $PhotosStateCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ISet<Photo> photos, int? currentPage, String? nextLink});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$PhotosStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
    Object? currentPage = freezed,
    Object? nextLink = freezed,
  }) {
    return _then(_$_Loaded(
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as ISet<Photo>,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      nextLink: freezed == nextLink
          ? _value.nextLink
          : nextLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  _$_Loaded({required this.photos, this.currentPage, this.nextLink});

  @override
  final ISet<Photo> photos;
  @override
  final int? currentPage;
  @override
  final String? nextLink;

  @override
  String toString() {
    return 'PhotosState.loaded(photos: $photos, currentPage: $currentPage, nextLink: $nextLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other.photos, photos) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.nextLink, nextLink) ||
                other.nextLink == nextLink));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(photos), currentPage, nextLink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ISet<Photo> photo, int? currentPage, String? nextLink)
        loading,
    required TResult Function(
            ISet<Photo> photos, int? currentPage, String? nextLink)
        loaded,
    required TResult Function(ISet<Photo> photo, int? currentPage,
            String? nextLink, String? errorMessage)
        error,
  }) {
    return loaded(photos, currentPage, nextLink);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ISet<Photo> photo, int? currentPage, String? nextLink)?
        loading,
    TResult? Function(ISet<Photo> photos, int? currentPage, String? nextLink)?
        loaded,
    TResult? Function(ISet<Photo> photo, int? currentPage, String? nextLink,
            String? errorMessage)?
        error,
  }) {
    return loaded?.call(photos, currentPage, nextLink);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ISet<Photo> photo, int? currentPage, String? nextLink)?
        loading,
    TResult Function(ISet<Photo> photos, int? currentPage, String? nextLink)?
        loaded,
    TResult Function(ISet<Photo> photo, int? currentPage, String? nextLink,
            String? errorMessage)?
        error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(photos, currentPage, nextLink);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements PhotosState {
  factory _Loaded(
      {required final ISet<Photo> photos,
      final int? currentPage,
      final String? nextLink}) = _$_Loaded;

  ISet<Photo> get photos;
  @override
  int? get currentPage;
  @override
  String? get nextLink;
  @override
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> implements $PhotosStateCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ISet<Photo> photo,
      int? currentPage,
      String? nextLink,
      String? errorMessage});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$PhotosStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = null,
    Object? currentPage = freezed,
    Object? nextLink = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_Error(
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as ISet<Photo>,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      nextLink: freezed == nextLink
          ? _value.nextLink
          : nextLink // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  _$_Error(
      {required this.photo,
      this.currentPage,
      this.nextLink,
      this.errorMessage});

  @override
  final ISet<Photo> photo;
  @override
  final int? currentPage;
  @override
  final String? nextLink;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'PhotosState.error(photo: $photo, currentPage: $currentPage, nextLink: $nextLink, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            const DeepCollectionEquality().equals(other.photo, photo) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.nextLink, nextLink) ||
                other.nextLink == nextLink) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(photo),
      currentPage,
      nextLink,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ISet<Photo> photo, int? currentPage, String? nextLink)
        loading,
    required TResult Function(
            ISet<Photo> photos, int? currentPage, String? nextLink)
        loaded,
    required TResult Function(ISet<Photo> photo, int? currentPage,
            String? nextLink, String? errorMessage)
        error,
  }) {
    return error(photo, currentPage, nextLink, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ISet<Photo> photo, int? currentPage, String? nextLink)?
        loading,
    TResult? Function(ISet<Photo> photos, int? currentPage, String? nextLink)?
        loaded,
    TResult? Function(ISet<Photo> photo, int? currentPage, String? nextLink,
            String? errorMessage)?
        error,
  }) {
    return error?.call(photo, currentPage, nextLink, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ISet<Photo> photo, int? currentPage, String? nextLink)?
        loading,
    TResult Function(ISet<Photo> photos, int? currentPage, String? nextLink)?
        loaded,
    TResult Function(ISet<Photo> photo, int? currentPage, String? nextLink,
            String? errorMessage)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(photo, currentPage, nextLink, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements PhotosState {
  factory _Error(
      {required final ISet<Photo> photo,
      final int? currentPage,
      final String? nextLink,
      final String? errorMessage}) = _$_Error;

  ISet<Photo> get photo;
  @override
  int? get currentPage;
  @override
  String? get nextLink;
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

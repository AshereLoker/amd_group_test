part of core;

final sl = GetIt.asNewInstance();

Future<void> initDependency() async {
  final dio = Dio(
    BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      sendTimeout: ApiConstants.sendingTimeoutDuration,
      connectTimeout: ApiConstants.sendingTimeoutDuration,
    ),
  );

  dio.interceptors.add(TokenInterceptor());

  sl.registerLazySingleton<Dio>(() => dio);

  _initPhotos();
}

void _initPhotos() {
  sl
    ..registerFactory<PhotosBloc>(() => PhotosBloc(sl()))
    ..registerFactory<DownloadPhotoBloc>(() => DownloadPhotoBloc(sl()))
    // Usecases.
    ..registerLazySingleton<GetPagedPhotos>(() => GetPagedPhotos(sl()))
    ..registerLazySingleton<DownloadPhoto>(() => DownloadPhoto(sl()))

    // Repository.
    ..registerLazySingleton<PhotosRepository>(
      () => PhotosRepositoryImpl(sl(), sl()),
    )

    // Datasources.
    ..registerLazySingleton<PhotosRemoteDatasource>(
      () => PexelsPhotoRemoteDatasourceImpl(sl()),
    )

    // Services.
    ..registerLazySingleton<DownloadPhotoService>(
      GallerySaverDownloadPhotoImpl.new,
    );
}

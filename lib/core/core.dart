library core;

import 'dart:async';
import 'dart:convert';

import 'package:amd_group_test/constants/api_constants.dart';
import 'package:amd_group_test/features/photos/data/datasources/pexels_photo_remote_datasource_impl.dart';
import 'package:amd_group_test/features/photos/data/datasources/photos_remote_datasource.dart';
import 'package:amd_group_test/features/photos/data/repositories/photos_repository_imp.dart';
import 'package:amd_group_test/features/photos/data/services/download_photo_service.dart';
import 'package:amd_group_test/features/photos/data/services/gallery_saver_download_photo_impl.dart';
import 'package:amd_group_test/features/photos/domain/repositories/photos_repository.dart';
import 'package:amd_group_test/features/photos/domain/usecases/download_photo.dart';
import 'package:amd_group_test/features/photos/domain/usecases/get_paged_photos.dart';
import 'package:amd_group_test/features/photos/presentation/bloc/download_photo/download_photo_bloc.dart';
import 'package:amd_group_test/features/photos/presentation/bloc/photos/photos_bloc.dart';

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:logger/logger.dart';

part 'app_logger.dart';
part 'data/handlers/request_handler.dart';
part 'data/interceptors/app_interceptor.dart';
part 'data/interceptors/token_interceptopr.dart';
part 'domain/use_case.dart';
part 'errors/exceptions.dart';
part 'errors/failure.dart';
part 'injection_container.dart';
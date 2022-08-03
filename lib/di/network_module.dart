import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:popular_movies/data/source/remote/service/movie_api_service.dart';
import 'package:popular_movies/res/constants.dart';

@module
abstract class NetworkModule {
  @singleton
  Dio get dio {
    final dio = Dio();
    if (kDebugMode) {
      dio.interceptors.add(LogInterceptor(
          responseBody: true,
          error: true,
          requestHeader: true,
          responseHeader: false,
          request: true,
          requestBody: true));
    }
    return dio;
  }

  @singleton
  Connectivity get connectivity => Connectivity();

  @singleton
  @Named(Constants.apiKeyName)
  String get apiKey => Constants.apiKey;

  @singleton
  MovieApiService get movieApiService {
    return MovieApiService(
      dio
        ..options.queryParameters = {
          Constants.apiKeyName: apiKey,
        },
      Constants.apiBaseUrl,
    );
  }
}
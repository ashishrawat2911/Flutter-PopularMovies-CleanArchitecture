// Mocks generated by Mockito 5.0.17 from annotations
// in popular_movies/test/data/repository/movie_repository_impl_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:popular_movies/core/network_error.dart' as _i5;
import 'package:popular_movies/data/repository/movie_repository_impl.dart'
    as _i3;
import 'package:popular_movies/domain/model/movie.dart' as _i7;
import 'package:popular_movies/domain/model/movie_details.dart' as _i6;
import 'package:popular_movies/domain/model/video.dart' as _i8;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeEither_0<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

/// A class which mocks [MovieRepositoryImpl].
///
/// See the documentation for Mockito's code generation for more information.
class MockMovieRepositoryImpl extends _i1.Mock
    implements _i3.MovieRepositoryImpl {
  MockMovieRepositoryImpl() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.NetworkError, _i6.MovieDetails>> getMovieDetail(
          int? id) =>
      (super.noSuchMethod(Invocation.method(#getMovieDetail, [id]),
              returnValue:
                  Future<_i2.Either<_i5.NetworkError, _i6.MovieDetails>>.value(
                      _FakeEither_0<_i5.NetworkError, _i6.MovieDetails>()))
          as _i4.Future<_i2.Either<_i5.NetworkError, _i6.MovieDetails>>);
  @override
  _i4.Future<_i2.Either<_i5.NetworkError, List<_i7.Movie>>>
      getPopularMovies() => (super.noSuchMethod(
              Invocation.method(#getPopularMovies, []),
              returnValue:
                  Future<_i2.Either<_i5.NetworkError, List<_i7.Movie>>>.value(
                      _FakeEither_0<_i5.NetworkError, List<_i7.Movie>>()))
          as _i4.Future<_i2.Either<_i5.NetworkError, List<_i7.Movie>>>);
  @override
  _i4.Future<_i2.Either<_i5.NetworkError, List<_i8.Video>>> getMovieVideos(
          int? id) =>
      (super.noSuchMethod(Invocation.method(#getMovieVideos, [id]),
              returnValue:
                  Future<_i2.Either<_i5.NetworkError, List<_i8.Video>>>.value(
                      _FakeEither_0<_i5.NetworkError, List<_i8.Video>>()))
          as _i4.Future<_i2.Either<_i5.NetworkError, List<_i8.Video>>>);
}

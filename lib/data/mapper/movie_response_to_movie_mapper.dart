import 'package:injectable/injectable.dart';
import 'package:popular_movies/data/source/remote/model/movie_response_model.dart';
import 'package:popular_movies/domain/model/movie.dart';
import 'package:smartstruct/smartstruct.dart';

part 'movie_response_to_movie_mapper.mapper.g.dart';

@Mapper(useInjection: true)
abstract class MovieResponseToMovieMapper {
  Movie fromModel(MovieResponseModel model);
}

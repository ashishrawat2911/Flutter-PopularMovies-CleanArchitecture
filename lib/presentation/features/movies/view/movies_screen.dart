import 'package:flutter/material.dart';
import 'package:popular_movies/domain/model/movie.dart';
import 'package:popular_movies/presentation/features/movies/state/movie_state.dart';
import 'package:popular_movies/presentation/features/movies/view_model/movies_view_model.dart';
import 'package:popular_movies/presentation/route/routes.dart';
import 'package:popular_movies/presentation/view/base_view.dart';
import 'package:popular_movies/res/constants.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<MoviesViewModel, MoviesState>(
      setupViewModel: (bloc) {
        bloc.getMovies();
      },
      builder: (context, state, viewModel) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Movies"),
          ),
          body: handleMoviesUi(state.moviesResultState),
        );
      },
    );
  }

  Widget handleMoviesUi(MoviesResultState moviesResultState) {
    return moviesResultState.when(
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
      result: (r) {
        return movies(r);
      },
      error: (error) {
        return Center(child: Text(error.errorMessage));
      },
    );
  }

  Widget movies(List<Movie> movies) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.5,
      ),
      itemCount: movies.length,
      padding: const EdgeInsets.all(10),
      itemBuilder: (BuildContext context, int index) {
        final item = movies[index];
        return GestureDetector(
          onTap: () {
            MovieDetailRoute(item.id).push();
          },
          child: Column(
            children: [
              Image.network("${Constants.movieImagePath}${item.posterPath}"),
              const SizedBox(
                height: 10,
              ),
              Text(item.title),
              Text('Ratings: ${item.voteAverage}')
            ],
          ),
        );
      },
    );
  }
}

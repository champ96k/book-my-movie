import 'package:book_my_movie/features/book_movies_ticket/data/repositories/movies_repository_imp.dart';
import 'package:book_my_movie/features/book_movies_ticket/presentation/movie_details_cubit/movie_details_cubit.dart';
import 'package:book_my_movie/features/book_movies_ticket/presentation/pages/movie_details/components/movie_details_body.dart';
import 'package:book_my_movie/src/pages/error_screen.dart';
import 'package:book_my_movie/src/pages/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({super.key, required this.movieId});
  final int movieId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MovieDetailsCubit>(
      create: (context) => MovieDetailsCubit(
        movieId: movieId,
        repository: GetIt.I<MoviesRepositoryImp>(),
      ),
      child: const MovieDetailsScreenContent(),
    );
  }
}

class MovieDetailsScreenContent extends StatelessWidget {
  const MovieDetailsScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<MovieDetailsCubit, MovieDetailsState>(
          builder: (context, state) {
            if (state is MoviesDetailsLoadingState) {
              return const LoadingScreen();
            } else if (state is MoviesDetailsLoadedState) {
              return MovieDetailsBody(model: state.movieDetailsModel);
            } else if (state is MoviesDetailsErrorState) {
              return ErrorScreen(errorMessage: state.errorMessage);
            } else {
              return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}

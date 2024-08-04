import 'package:book_my_movie/core/generic/base_state.dart';
import 'package:book_my_movie/core/generic/generic_bloc_builder.dart';
import 'package:book_my_movie/features/book_movies_ticket/data/models/movie_details_model/movie_details_model.dart';
import 'package:book_my_movie/features/book_movies_ticket/data/repositories/movies_repository_imp.dart';

import 'package:book_my_movie/features/book_movies_ticket/presentation/movie_details_cubit/movie_details_cubit.dart';
import 'package:book_my_movie/features/book_movies_ticket/presentation/pages/movie_details/components/movie_details_body.dart';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({super.key, required this.movieId});
  final int movieId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GenericBlocBuilder<MoviesDetailsCubit, BaseState>(
          cubit: (context) => MoviesDetailsCubit(
            movieId: movieId,
            repository: GetIt.I<MoviesRepositoryImp>(),
          ),
          builder: (context, state) {
            if (state is LoadedState<MovieDetailsModel?>) {
              return MovieDetailsBody(model: state.data);
            } else {
              return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}

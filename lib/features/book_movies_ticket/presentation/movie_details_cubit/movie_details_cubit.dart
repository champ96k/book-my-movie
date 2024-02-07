import 'package:book_my_movie/features/book_movies_ticket/data/models/movie_details_model/movie_details_model.dart';
import 'package:book_my_movie/features/book_movies_ticket/domain/repositories/movies_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'movie_details_state.dart';

class MovieDetailsCubit extends Cubit<MovieDetailsState> {
  MovieDetailsCubit({required this.movieId, required this.repository})
      : super(MovieDetailsInitialState()) {
    _fetchMovieDetails();
  }

  final int movieId;
  final MoviesRepository repository;

  Future<void> _fetchMovieDetails() async {
    emit(MoviesDetailsLoadingState());
    final _result = await repository.getMovieDetails(movieId);
    if (_result.data != null) {
      emit(MoviesDetailsLoadedState(_result.data, movieId));
    } else {
      emit(MoviesDetailsErrorState(_result.error?.message ?? ''));
    }
  }
}

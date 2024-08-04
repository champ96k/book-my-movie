import 'package:book_my_movie/core/generic/base_state.dart';
import 'package:book_my_movie/features/book_movies_ticket/data/models/movie_details_model/movie_details_model.dart';
import 'package:book_my_movie/features/book_movies_ticket/domain/repositories/movies_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MoviesDetailsCubit extends Cubit<BaseState> {
  MoviesDetailsCubit({required this.repository, required this.movieId})
      : super(LoadingState()) {
    _fetchMovieDetails();
  }

  final MoviesRepository repository;
  final int movieId;

  Future<void> _fetchMovieDetails() async {
    final _result = await repository.getMovieDetails(movieId);
    if (_result.data != null) {
      emit(LoadedState<MovieDetailsModel?>(_result.data));
    } else {
      emit(ErrorState(_result.error?.message ?? ''));
    }
  }
}

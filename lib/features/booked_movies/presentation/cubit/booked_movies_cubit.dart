import 'package:book_my_movie/core/hive/hive_config.dart';
import 'package:book_my_movie/features/booked_movies/data/models/booked_movie_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'booked_movies_state.dart';

class BookedMoviesCubit extends Cubit<BookedMoviesState> {
  BookedMoviesCubit() : super(BookedMoviesInitial()) {
    _getBookedMovies();
  }

  Future<void> _getBookedMovies() async {
    try {
      emit(BookedMoviesLoading(message: 'Fetching Movies...'));

      /// Get the Hive box
      final _moviesBox = Hive.box<BookedMovieModel>(HiveConfig.movieBox);
      // Get the existing list of movies from the box
      final List<BookedMovieModel> _movies = _moviesBox.values.toList();
      emit(BookedMoviesLoaded(movies: _movies));
    } catch (e) {
      emit(BookedMoviesError(errorMessage: 'Something went wrong : $e'));
    }
  }
}

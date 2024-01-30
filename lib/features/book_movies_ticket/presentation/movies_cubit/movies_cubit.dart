import 'package:book_my_movie/features/book_movies_ticket/data/models/upcoming_movies_model/upcoming_movies_model.dart';
import 'package:book_my_movie/features/book_movies_ticket/domain/repositories/movies_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'movies_state.dart';

class MoviesCubit extends Cubit<MoviesState> {
  MoviesCubit({required this.repository}) : super(MoviesInitialState()) {
    _getUpcomingMovie();
  }

  final MoviesRepository repository;

  int? _totalMoviesCount;
  int? get totalMoviesCount => _totalMoviesCount;

  void _getUpcomingMovie() async {
    emit(MoviesLoadingState());
    final _result = await repository.getUpcomingMovies();
    if (_result.data != null) {
      _totalMoviesCount = _result.data?.results?.length;
      emit(MoviesLoadedState(_result.data?.results ?? []));
    } else {
      emit(MoviesErrorState(_result.error?.message ?? ''));
    }
  }
}

part of 'movies_cubit.dart';

abstract class MoviesState extends Equatable {}

class MoviesInitialState extends MoviesState {
  @override
  List<Object?> get props => ['MoviesInitialState'];
}

class MoviesLoadingState extends MoviesState {
  @override
  List<Object?> get props => ['MoviesLoadingState'];
}

class MoviesErrorState extends MoviesState {
  MoviesErrorState(this.errorMessage);

  final String errorMessage;
  @override
  List<Object?> get props => [errorMessage];
}

class MoviesLoadedState extends MoviesState {
  MoviesLoadedState(this.movies);
  final List<ResultData> movies;
  @override
  List<Object?> get props => [movies];
}

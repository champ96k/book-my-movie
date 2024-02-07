part of 'booked_movies_cubit.dart';

abstract class BookedMoviesState extends Equatable {}

class BookedMoviesInitial extends BookedMoviesState {
  @override
  List<Object?> get props => ['BookedMoviesInitial'];
}

class BookedMoviesLoading extends BookedMoviesState {
  BookedMoviesLoading({required this.message});

  final String message;
  @override
  List<Object?> get props => [message];
}

class BookedMoviesError extends BookedMoviesState {
  BookedMoviesError({required this.errorMessage});

  final String errorMessage;
  @override
  List<Object?> get props => [errorMessage];
}

class BookedMoviesLoaded extends BookedMoviesState {
  BookedMoviesLoaded({required this.movies});

  final List<BookedMovieModel> movies;
  @override
  List<Object?> get props => [movies];
}

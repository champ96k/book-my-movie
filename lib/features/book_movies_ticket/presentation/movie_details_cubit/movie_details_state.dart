part of 'movie_details_cubit.dart';

abstract class MovieDetailsState extends Equatable {}

class MovieDetailsInitialState extends MovieDetailsState {
  @override
  List<Object?> get props => ['MovieDetailsInitialState'];
}

class MoviesDetailsLoadingState extends MovieDetailsState {
  @override
  List<Object?> get props => ['MoviesDetailsLoadingState'];
}

class MoviesDetailsErrorState extends MovieDetailsState {
  MoviesDetailsErrorState(this.errorMessage);

  final String errorMessage;
  @override
  List<Object?> get props => [errorMessage];
}

class MoviesDetailsLoadedState extends MovieDetailsState {
  MoviesDetailsLoadedState(this.movieDetailsModel, this.movieId);
  final MovieDetailsModel? movieDetailsModel;
  final int movieId;
  @override
  List<Object?> get props => [movieDetailsModel, movieId];
}

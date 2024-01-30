part of 'movie_images_cubit.dart';

abstract class MovieImagesState extends Equatable {}

class MovieImagesInitialState extends MovieImagesState {
  @override
  List<Object?> get props => ['MovieImagesInitialState'];
}

class MoviesImagesLoadingState extends MovieImagesState {
  @override
  List<Object?> get props => ['MoviesImagesLoadingState'];
}

class MoviesImagesErrorState extends MovieImagesState {
  MoviesImagesErrorState(this.errorMessage);

  final String errorMessage;
  @override
  List<Object?> get props => [errorMessage];
}

class MoviesImagesLoadedState extends MovieImagesState {
  MoviesImagesLoadedState(this.images);
  final List<Backdrop>? images;
  @override
  List<Object?> get props => [images];
}

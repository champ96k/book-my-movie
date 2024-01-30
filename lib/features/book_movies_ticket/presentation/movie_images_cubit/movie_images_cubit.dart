import 'package:book_my_movie/features/book_movies_ticket/data/models/movie_images_model/movie_images_model.dart';
import 'package:book_my_movie/features/book_movies_ticket/domain/repositories/movies_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'movie_images_state.dart';

class MovieImagesCubit extends Cubit<MovieImagesState> {
  MovieImagesCubit({required this.movieId, required this.repository})
      : super(MovieImagesInitialState()) {
    _fetchMovieImages();
  }

  final int movieId;
  final MoviesRepository repository;

  Future<void> _fetchMovieImages() async {
    emit(MoviesImagesLoadingState());
    final _result = await repository.getMovieImages(movieId);
    if (_result.data != null) {
      emit(MoviesImagesLoadedState(_result.data?.backdrops ?? []));
    } else {
      emit(MoviesImagesErrorState(_result.error?.message ?? ''));
    }
  }
}

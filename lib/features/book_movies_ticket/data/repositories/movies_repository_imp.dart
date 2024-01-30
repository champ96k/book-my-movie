import 'package:book_my_movie/core/utils/result.dart';
import 'package:book_my_movie/features/book_movies_ticket/data/datasources/movies_data_sources.dart';
import 'package:book_my_movie/features/book_movies_ticket/data/models/movie_details_model/movie_details_model.dart';
import 'package:book_my_movie/features/book_movies_ticket/data/models/movie_images_model/movie_images_model.dart';
import 'package:book_my_movie/features/book_movies_ticket/data/models/upcoming_movies_model/upcoming_movies_model.dart';
import 'package:book_my_movie/features/book_movies_ticket/domain/repositories/movies_repository.dart';

class MoviesRepositoryImp extends MoviesRepository {
  MoviesRepositoryImp({required this.remoteDataSource});

  final MoviesDataSources remoteDataSource;

  @override
  Future<Result<UpcomingMoviesModel>> getUpcomingMovies() {
    return remoteDataSource.getUpcomingMovies();
  }

  @override
  Future<Result<MovieDetailsModel>> getMovieDetails(int movieId) async {
    return remoteDataSource.getMovieDetails(movieId);
  }

  @override
  Future<Result<MovieImagesModel>> getMovieImages(int movieId) async {
    return remoteDataSource.getMovieImages(movieId);
  }
}

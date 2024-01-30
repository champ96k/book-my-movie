import 'package:book_my_movie/core/utils/result.dart';
import 'package:book_my_movie/features/book_movies_ticket/data/models/movie_details_model/movie_details_model.dart';
import 'package:book_my_movie/features/book_movies_ticket/data/models/movie_images_model/movie_images_model.dart';
import 'package:book_my_movie/features/book_movies_ticket/data/models/upcoming_movies_model/upcoming_movies_model.dart';

abstract class MoviesRepository {
  Future<Result<UpcomingMoviesModel>> getUpcomingMovies();
  Future<Result<MovieDetailsModel>> getMovieDetails(String movieId);
  Future<Result<MovieImagesModel>> getMovieImages(String movieId);
}

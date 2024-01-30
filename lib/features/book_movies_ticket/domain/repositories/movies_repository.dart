import 'package:book_my_movie/core/utils/result.dart';
import 'package:book_my_movie/features/book_movies_ticket/data/models/upcoming_movies_model/upcoming_movies_model.dart';

abstract class MoviesRepository {
  Future<Result<UpcomingMoviesModel>> getUpcomingMovies();
  Future<dynamic> getMovieDetails(String movieId);
  Future<dynamic> getMovieImages(String movieId);
}

import 'package:book_my_movie/core/utils/result.dart';
import 'package:book_my_movie/features/book_movies_ticket/data/models/upcoming_movies_model/upcoming_movies_model.dart';
import 'package:book_my_movie/features/book_movies_ticket/data/sources/remote_sources/movies_remote_data_source.dart';
import 'package:book_my_movie/features/book_movies_ticket/domain/repositories/movies_repository.dart';

class MoviesRepositoryImp extends MoviesRepository {
  MoviesRepositoryImp({required this.remoteDataSource});

  final MoviesRemoteDataSource remoteDataSource;

  @override
  Future getMovieDetails(String movieId) async {
    return remoteDataSource.getMovieDetails(movieId);
  }

  @override
  Future getMovieImages(String movieId) async {
    return remoteDataSource.getMovieImages(movieId);
  }

  @override
  Future<Result<UpcomingMoviesModel>> getUpcomingMovies() {
    return remoteDataSource.getUpcomingMovies();
  }
}

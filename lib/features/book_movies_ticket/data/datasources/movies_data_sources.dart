import 'package:book_my_movie/core/constant/constants.dart';
import 'package:book_my_movie/core/error/custom_error.dart';
import 'package:book_my_movie/core/services/network_services/http_service.dart';
import 'package:book_my_movie/core/utils/result.dart';
import 'package:book_my_movie/features/book_movies_ticket/data/models/movie_details_model/movie_details_model.dart';
import 'package:book_my_movie/features/book_movies_ticket/data/models/movie_images_model/movie_images_model.dart';
import 'package:book_my_movie/features/book_movies_ticket/data/models/upcoming_movies_model/upcoming_movies_model.dart';

class MoviesDataSources {
  MoviesDataSources({required this.httpService});

  final HttpService httpService;

  Future<Result<MovieDetailsModel>> getMovieDetails(int movieId) async {
    try {
      final response =
          await httpService.handleGetRequest('${Constants.baseURL}$movieId');
      return Result(data: MovieDetailsModel.fromJson(response.data));
    } catch (e) {
      return Result(
        error: CustomError(
          message: 'Error fetching movies details: $e',
        ),
      );
    }
  }

  Future<Result<MovieImagesModel>> getMovieImages(int movieId) async {
    try {
      final response = await httpService
          .handleGetRequest('${Constants.baseURL}$movieId/images');
      return Result(data: MovieImagesModel.fromJson(response.data));
    } catch (e) {
      return Result(
        error: CustomError(
          message: 'Error fetching movies images: $e',
        ),
      );
    }
  }

  Future<Result<UpcomingMoviesModel>> getUpcomingMovies() async {
    try {
      final response =
          await httpService.handleGetRequest('${Constants.baseURL}upcoming');
      final upcomingMovie = UpcomingMoviesModel.fromJson(response.data);
      return Result(data: upcomingMovie);
    } catch (e) {
      return Result(
        error: CustomError(
          message: 'Error fetching upcoming movies: $e',
        ),
      );
    }
  }
}

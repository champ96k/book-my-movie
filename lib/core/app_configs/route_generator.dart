import 'package:book_my_movie/features/book_movies_ticket/presentation/pages/home_page.dart';
import 'package:book_my_movie/features/book_movies_ticket/presentation/pages/movie_details/movie_details_screen.dart';
import 'package:book_my_movie/features/book_movies_ticket/presentation/pages/video_player/primary_video_player.dart';
import 'package:flutter/material.dart';

import 'screen_names.dart';

class RouteGenerator {
  RouteGenerator._();

  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      case ScreenNames.homePage:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );

      case ScreenNames.movieDetailsScreen:
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (context) => MovieDetailsScreen(
            movieId: args['movieId'],
          ),
        );

      case ScreenNames.videoPlayerScreen:
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (context) => VideoPlayerScreen(
            movidId: args['movidId'],
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );
    }
  }
}

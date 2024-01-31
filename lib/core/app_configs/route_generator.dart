import 'package:book_my_movie/features/book_movies_ticket/presentation/pages/home_page.dart';
import 'package:book_my_movie/features/book_movies_ticket/presentation/pages/movie_details/movie_details_screen.dart';
import 'package:book_my_movie/features/book_movies_ticket/presentation/pages/video_player/primary_video_player.dart';
import 'package:book_my_movie/features/ticket_booking/presentation/pages/cinema_listing_screen.dart';
import 'package:book_my_movie/features/ticket_booking/presentation/pages/seat_selection_screen.dart';
import 'package:book_my_movie/features/ticket_booking/presentation/ticket_booking_cubit/ticket_booking_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'screen_names.dart';

class RouteGenerator {
  RouteGenerator._();

  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      case ScreenNames.homePage:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );

      case ScreenNames.seatSelectionScreen:
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (context) => BlocProvider<TicketBookingCubit>(
            create: (context) => TicketBookingCubit(),
            child: SeatSelectionScreen(
              movieName: args['movieName'] ?? '',
              cinema: args['cinema'],
              date: args['date'] ?? '',
              languages: args['languages'] ?? '',
              selectedTime: args['selectedTime'] ?? '',
            ),
          ),
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

      case ScreenNames.cinemaListingScreen:
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (context) => CinemaListingScreen(
            languages: args['languages'],
            movieName: args['movieName'],
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );
    }
  }
}

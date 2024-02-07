import 'package:book_my_movie/features/booked_movies/presentation/cubit/booked_movies_cubit.dart';
import 'package:book_my_movie/features/booked_movies/presentation/pages/components/booked_movies_list.dart';
import 'package:book_my_movie/src/pages/error_screen.dart';
import 'package:book_my_movie/src/pages/loading_screen.dart';
import 'package:book_my_movie/src/widgets/app_bar/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookedMoviesScreen extends StatelessWidget {
  const BookedMoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BookedMoviesCubit>(
      create: (context) => BookedMoviesCubit(),
      child: const BookedMoviesBody(),
    );
  }
}

class BookedMoviesBody extends StatelessWidget {
  const BookedMoviesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        showBookedMovieIcon: false,
        title: 'Booked Movies',
      ),
      body: BlocBuilder<BookedMoviesCubit, BookedMoviesState>(
        builder: (context, state) {
          if (state is BookedMoviesLoading) {
            return const LoadingScreen();
          } else if (state is BookedMoviesLoaded) {
            final _movies = state.movies;
            return BookedMoviewList(movies: _movies);
          } else if (state is BookedMoviesError) {
            return ErrorScreen(errorMessage: state.errorMessage);
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}

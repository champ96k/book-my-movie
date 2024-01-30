import 'package:book_my_movie/features/book_movies_ticket/presentation/movies_cubit/movies_cubit.dart';
import 'package:book_my_movie/features/book_movies_ticket/presentation/widgets/movies_list_widget.dart';
import 'package:book_my_movie/src/pages/error_screen.dart';
import 'package:book_my_movie/src/pages/loading_screen.dart';
import 'package:book_my_movie/src/widgets/app_bar/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final totalMoviesCount = context.watch<MoviesCubit>().totalMoviesCount;
    return Scaffold(
      appBar: CustomAppBar(
        subTitle: totalMoviesCount != null
            ? "Mumbai | $totalMoviesCount  Movies"
            : '',
      ),
      body: BlocBuilder<MoviesCubit, MoviesState>(
        builder: (context, state) {
          if (state is MoviesLoadingState) {
            return const LoadingScreen();
          } else if (state is MoviesLoadedState) {
            return MoviesListWidget(list: state.movies);
          } else if (state is MoviesErrorState) {
            return ErrorScreen(errorMessage: state.errorMessage);
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}

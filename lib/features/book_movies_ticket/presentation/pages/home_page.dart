import 'package:book_my_movie/features/book_movies_ticket/presentation/cubit/book_movies_ticket_cubit.dart';
import 'package:book_my_movie/features/book_movies_ticket/presentation/widgets/movies_list_widget.dart';
import 'package:book_my_movie/src/pages/error_screen.dart';
import 'package:book_my_movie/src/pages/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: BlocBuilder<BookMoviesTicketCubit, BookMoviesTicketState>(
        builder: (context, state) {
          if (state is BookMoviesLoading) {
            return const LoadingScreen();
          } else if (state is UpcomingMoviesLoaded) {
            return MoviesListWidget(list: state.model?.results ?? []);
          } else if (state is BookMoviesError) {
            return ErrorScreen(errorMessage: state.errorMessage);
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}

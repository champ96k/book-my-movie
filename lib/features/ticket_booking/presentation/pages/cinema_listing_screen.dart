import 'package:book_my_movie/core/app_configs/screen_names.dart';
import 'package:book_my_movie/features/ticket_booking/data/repositories/cinemas_repository_imp.dart';
import 'package:book_my_movie/features/ticket_booking/presentation/cubit/cinema_listing_cubit.dart';
import 'package:book_my_movie/features/ticket_booking/presentation/widgets/cinema_list_item.dart';
import 'package:book_my_movie/src/pages/error_screen.dart';
import 'package:book_my_movie/src/pages/loading_screen.dart';
import 'package:book_my_movie/src/widgets/app_bar/custom_appbar.dart';
import 'package:book_my_movie/src/widgets/calender/horizontal_calendar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class CinemaListingScreen extends StatelessWidget {
  const CinemaListingScreen({
    super.key,
    required this.languages,
    required this.movieName,
  });

  final String languages;
  final String movieName;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CinemaListingCubit>(
      create: (context) => CinemaListingCubit(
        repository: GetIt.I<CinemasRepositoryImp>(),
      ),
      child: CinemaListingWidget(
        languages: languages,
        movieName: movieName,
      ),
    );
  }
}

class CinemaListingWidget extends StatelessWidget {
  const CinemaListingWidget({
    super.key,
    required this.languages,
    required this.movieName,
  });

  final String languages;
  final String movieName;

  @override
  Widget build(BuildContext context) {
    String _seletedDate = '';
    return Scaffold(
      appBar: CustomAppBar(title: movieName),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HorizontalCalendar(
            onDateUpdate: (p0) {
              _seletedDate = p0;
            },
          ),
          const SizedBox(height: 4.0),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              '• $languages',
              style: const TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Divider(),
          const SizedBox(height: 16.0),
          Expanded(child: BlocBuilder<CinemaListingCubit, CinemaListingState>(
            builder: (context, state) {
              if (state is CinemaListingLoadingState) {
                return const LoadingScreen();
              } else if (state is CinemaListingLoadedState) {
                return ListView.builder(
                  itemCount: state.cinemas.length,
                  padding: const EdgeInsets.all(0.0),
                  itemBuilder: (context, i) {
                    return CinemaListItem(
                      onTap: (show) {
                        Navigator.of(context).pushNamed(
                          ScreenNames.seatSelectionScreen,
                          arguments: {
                            'movieName': movieName,
                            'cinema': state.cinemas[i],
                            'date': _seletedDate,
                            'languages': languages,
                            'selectedTime': show?.time ?? '',
                          },
                        );
                      },
                      cinema: state.cinemas[i],
                    );
                  },
                );
              } else if (state is CinemaListingErrorState) {
                return ErrorScreen(errorMessage: state.errorMessage);
              } else {
                return const SizedBox();
              }
            },
          )),
        ],
      ),
    );
  }
}

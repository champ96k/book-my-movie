import 'package:book_my_movie/features/book_movies_ticket/data/repositories/movies_repository_imp.dart';
import 'package:book_my_movie/features/book_movies_ticket/presentation/movie_images_cubit/movie_images_cubit.dart';
import 'package:book_my_movie/src/pages/error_screen.dart';
import 'package:book_my_movie/src/pages/loading_screen.dart';
import 'package:book_my_movie/src/widgets/show_banner_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class MovieImagesWidget extends StatelessWidget {
  const MovieImagesWidget({super.key, required this.movieId});
  final int? movieId;

  @override
  Widget build(BuildContext context) {
    if (movieId == null) {
      return const SizedBox();
    }
    return BlocProvider<MovieImagesCubit>(
      create: (context) => MovieImagesCubit(
        movieId: movieId!,
        repository: GetIt.I<MoviesRepositoryImp>(),
      ),
      child: const MovieImagesWidgetContent(),
    );
  }
}

class MovieImagesWidgetContent extends StatelessWidget {
  const MovieImagesWidgetContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieImagesCubit, MovieImagesState>(
      builder: (context, state) {
        if (state is MoviesImagesLoadingState) {
          return const LoadingScreen();
        } else if (state is MoviesImagesLoadedState) {
          int _imagesCount = state.images?.length ?? 0;
          if (_imagesCount >= 5) _imagesCount = 5;
          return CarouselSlider.builder(
            options: CarouselOptions(
              viewportFraction: 1.0,
              pauseAutoPlayOnTouch: true,
            ),
            itemCount: _imagesCount,
            itemBuilder: (context, itemIndex, pageViewIndex) {
              final item = state.images?[itemIndex];
              if (item == null) {
                return const SizedBox();
              }
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    ShowBannerImage(imagePath: item.filePath),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Wrap(
                        children: List.generate(_imagesCount, (i) {
                          return Container(
                            height: 10,
                            width: 10,
                            margin: const EdgeInsets.symmetric(
                              vertical: 16.0,
                              horizontal: 3.0,
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:
                                  itemIndex == i ? Colors.white : Colors.grey,
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        } else if (state is MoviesImagesErrorState) {
          return ErrorScreen(errorMessage: state.errorMessage);
        } else {
          return const SizedBox();
        }
      },
    );
  }
}

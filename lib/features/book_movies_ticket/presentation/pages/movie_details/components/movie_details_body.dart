import 'package:book_my_movie/core/extension/num_extension.dart';
import 'package:book_my_movie/core/extension/string_extenstion_method.dart';
import 'package:book_my_movie/features/book_movies_ticket/data/models/movie_details_model/movie_details_model.dart';
import 'package:book_my_movie/features/book_movies_ticket/presentation/pages/movie_details/components/movie_details_header.dart';
import 'package:book_my_movie/features/book_movies_ticket/presentation/pages/movie_details/components/production_companies_tag.dart';
import 'package:book_my_movie/features/book_movies_ticket/presentation/pages/movie_details/components/spoken_languages_tags.dart';
import 'package:book_my_movie/features/book_movies_ticket/presentation/pages/movie_images/movie_images_widget.dart';
import 'package:flutter/material.dart';

class MovieDetailsBody extends StatelessWidget {
  const MovieDetailsBody({super.key, required this.model});

  final MovieDetailsModel? model;

  @override
  Widget build(BuildContext context) {
    if (model == null) {
      return const SizedBox();
    }
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MovieDetailsHeader(title: model?.title ?? ''),
              const SizedBox(height: 12.0),
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    height: constraints.maxHeight * 0.3,
                    width: constraints.maxWidth,
                    child: MovieImagesWidget(movieId: model?.id),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 4.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: const Wrap(
                        alignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Icon(Icons.play_arrow, color: Colors.white),
                          Text(
                            "Trailers",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.star, color: Colors.red),
                  const SizedBox(width: 6.0),
                  Text(
                    "${model?.voteAverage?.toStringAsFixed(1)}/10",
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Text("${model?.voteCount.formatNumber()} Votes"),
                ],
              ),
              const SizedBox(height: 8.0),
              SpokenLanguagesTags(languages: model?.spokenLanguages ?? []),
              const SizedBox(height: 8.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('• ${model?.runtime.toHoursAndMinutesString() ?? ''}'),
                  const SizedBox(width: 6.0),
                  Text("• ${model?.genres?.first.name ?? ''}"),
                  const SizedBox(width: 6.0),
                  Text("• ${model?.productionCountries?.first.iso31661 ?? ''}"),
                  const SizedBox(width: 6.0),
                  Text(
                    '• ${'${model?.releaseDate}'.formatDate()}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Text(
                model?.overview ?? '',
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 24.0),
              const Text(
                "Production",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 12.0),
              ProductionCompaniesTag(
                productionCompanies: model?.productionCompanies ?? [],
              ),
            ],
          ),
        );
      },
    );
  }
}

import 'package:book_my_movie/features/book_movies_ticket/data/models/movie_details_model/movie_details_model.dart';
import 'package:flutter/material.dart';

class SpokenLanguagesTags extends StatelessWidget {
  const SpokenLanguagesTags({super.key, required this.languages});

  final List<SpokenLanguage> languages;

  @override
  Widget build(BuildContext context) {
    if (languages.isEmpty) {
      return const SizedBox();
    }
    return Wrap(
      alignment: WrapAlignment.start,
      children: languages.map((e) {
        return Padding(
          padding: const EdgeInsets.all(6.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(3.0),
            ),
            padding: const EdgeInsets.all(6.0),
            child: Text(
              e.englishName ?? '',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}

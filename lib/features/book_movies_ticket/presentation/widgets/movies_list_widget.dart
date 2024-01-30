import 'package:book_my_movie/features/book_movies_ticket/data/models/upcoming_movies_model/upcoming_movies_model.dart';
import 'package:flutter/material.dart';

class MoviesListWidget extends StatelessWidget {
  const MoviesListWidget({super.key, required this.list});

  final List<ResultData> list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        final item = list[index];
        return Container(
          height: 550,
          margin: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: Colors.grey.withOpacity(0.3),
              strokeAlign: 0.75,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.originalTitle ?? '',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    'https://image.tmdb.org/t/p/original${item.posterPath ?? ''}',
                    height: 450,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
                Text(
                  item.overview ?? '',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

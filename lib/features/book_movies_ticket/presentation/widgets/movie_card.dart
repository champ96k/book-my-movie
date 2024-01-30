import 'package:book_my_movie/core/app_configs/screen_names.dart';
import 'package:book_my_movie/core/extension/num_extension.dart';
import 'package:book_my_movie/core/extension/string_extenstion_method.dart';
import 'package:book_my_movie/features/book_movies_ticket/data/models/upcoming_movies_model/upcoming_movies_model.dart';
import 'package:book_my_movie/src/widgets/show_banner_image.dart';
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key, required this.resultData});

  final ResultData resultData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 13,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  ScreenNames.movieDetailsScreen,
                  arguments: {'movieId': resultData.id},
                );
              },
              child: ShowBannerImage(imagePath: resultData.posterPath),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                const Icon(Icons.thumb_up, color: Colors.green),
                const SizedBox(width: 6.0),
                Text(
                  resultData.voteCount.formatNumber(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 4.0),
                const Text(
                  "Likes",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 12.0,
                  ),
                ),
                const Spacer(),
                Text(
                  '${resultData.releaseDate}'.formatDate(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              resultData.title ?? '',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

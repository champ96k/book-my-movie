import 'package:book_my_movie/core/constant/utils_constants.dart';
import 'package:book_my_movie/core/extension/string_extenstion_method.dart';
import 'package:book_my_movie/features/booked_movies/data/models/booked_movie_model.dart';
import 'package:book_my_movie/src/widgets/show_banner_image.dart';
import 'package:flutter/material.dart';

class BookedMoviewList extends StatelessWidget {
  const BookedMoviewList({super.key, required this.movies});

  final List<BookedMovieModel> movies;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    if (movies.isEmpty) {
      return const Center(child: Text("No booking found"));
    } else {
      return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: movies.length,
        itemBuilder: (context, i) {
          final _item = movies[i];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10.0),
                Container(
                  alignment: Alignment.center,
                  width: _size.width,
                  decoration: BoxDecoration(
                    color: Colors.orange.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Wrap(
                          children: [
                            const Text(
                              'Booked on: ',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black38,
                                fontSize: 15.0,
                              ),
                            ),
                            Text(
                              '${'${_item.bookedDate}'.formatDate()} at ${'${_item.bookedTime}'.formatDate(defaultFormat: UtilsConstants.timeFormat)}',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.black38,
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4.0),
                        const Divider(),
                        const SizedBox(height: 4.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ShowBannerImage(
                              imagePath: _item.posterURL,
                              height: _size.height * 0.16,
                              width: _size.width * 0.27,
                            ),
                            const SizedBox(width: 16.0),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      _item.movieName ?? '',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const Spacer(),
                                    const Text(
                                      "Pickup",
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 4.0),
                                Text(movies[i].langauge ?? ''),
                                const SizedBox(height: 12.0),
                                Text(
                                  '${_item.showDate ?? ''} | ${_item.showTime}',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    color: Colors.black87,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 6.0),
                                Text(
                                  '${movies[i].cinemaName ?? ''}, ${movies[i].cinemaAddress ?? ''}',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    color: Colors.black54,
                                    fontSize: 12.0,
                                  ),
                                ),
                                const SizedBox(height: 16.0),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 4,
                                      child: Text(
                                        '${_item.tickets?.length} tickets: ',
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: const TextStyle(
                                          color: Colors.black87,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 4.0),
                                    Expanded(
                                      flex: 6,
                                      child: Wrap(
                                        children: (_item.tickets ?? [])
                                            .map(
                                              (e) => Text(
                                                '$e, ',
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            )
                                            .toList(),
                                      ),
                                    ),
                                    Text(
                                      _item.screenName ?? '',
                                      style: const TextStyle(
                                        color: Colors.black87,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
    }
  }
}

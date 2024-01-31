import 'package:book_my_movie/core/app_configs/screen_names.dart';
import 'package:book_my_movie/features/ticket_booking/data/models/cinema_list_model.dart';
import 'package:flutter/material.dart';

class CinemaListItem extends StatelessWidget {
  const CinemaListItem({super.key, required this.cinema});

  final Cinema cinema;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.favorite_border,
                color: Colors.black45,
              ),
              const SizedBox(width: 8.0),
              Expanded(
                flex: 8,
                child: Text(
                  cinema.name ?? '',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const Spacer(),
              const Row(
                children: [
                  Icon(
                    Icons.info_outline,
                    size: 18,
                    color: Colors.black54,
                  ),
                  SizedBox(width: 4.0),
                  Text("INFO"),
                  SizedBox(width: 4.0),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Text(
            (cinema.nonCancellable ?? false)
                ? "Non-cancellable"
                : 'Cancellable',
          ),
          const SizedBox(height: 10.0),
          Center(
            child: Wrap(
              alignment: WrapAlignment.start,
              children: List.generate(cinema.showTimes?.length ?? 0, (index) {
                final _show = cinema.showTimes?[index];
                if (_show == null) {
                  return const SizedBox();
                }
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      ScreenNames.seatSelectionScreen,
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black38,
                        width: 0.4,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          _show.time ?? '',
                          style: const TextStyle(
                            color: Colors.green,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          _show.sound ?? ''.toUpperCase(),
                          style: const TextStyle(
                            color: Colors.green,
                            fontSize: 10.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

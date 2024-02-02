import 'package:book_my_movie/features/ticket_booking/data/models/ticket_book_model/ticket_book_model.dart';
import 'package:book_my_movie/src/widgets/app_bar/custom_appbar.dart';
import 'package:book_my_movie/src/widgets/button/primary_button.dart';
import 'package:flutter/material.dart';

class TicketDetailsScreen extends StatelessWidget {
  const TicketDetailsScreen({
    super.key,
    required this.ticketBookModel,
  });

  final TicketBookModel? ticketBookModel;

  @override
  Widget build(BuildContext context) {
    final _selectedSeat = ticketBookModel?.selectedSeatsName ?? [];
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Confirm booking',
        showSearch: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ticketBookModel?.movieName ?? '',
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0,
                          ),
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '${_selectedSeat.length}',
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 15.0,
                              ),
                            ),
                            const SizedBox(height: 4.0),
                            const Text(
                              'M-Ticket',
                              style: TextStyle(
                                color: Colors.pink,
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      "${ticketBookModel?.seletedDate} | ${ticketBookModel?.movieTime}",
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      '${ticketBookModel?.langauage} 2D',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontSize: 14.0,
                      ),
                    ),
                    const SizedBox(height: 2.0),
                    Text(
                      ticketBookModel?.cinemaAddress ?? '',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontSize: 14.0,
                      ),
                    ),
                    const SizedBox(height: 6.0),
                    Row(
                      children: [
                        Text(
                          'Seat Number - ',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.7),
                            fontSize: 14.0,
                          ),
                        ),
                        Wrap(
                          children: _selectedSeat.map((e) {
                            return Container(
                              padding: const EdgeInsets.all(6.0),
                              margin: const EdgeInsets.all(3.0),
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              child: Text(e),
                            );
                          }).toList(),
                        )
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Cancellation ${(ticketBookModel?.cancellation ?? false) ? 'unavailable' : 'available'}',
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                            ),
                          ),
                          const SizedBox(height: 6.0),
                          Text(
                            'This venue ${(ticketBookModel?.cancellation ?? false) ? 'does not support' : ''} support booking Cancellation',
                            style: const TextStyle(
                              color: Colors.black54,
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24.0),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
              color: Colors.black26,
              width: 0.4,
            ),
          ),
        ),
        padding: const EdgeInsets.all(12.0),
        margin: const EdgeInsets.symmetric(horizontal: 6.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 10.0),
                const Text(
                  "Total Amount",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 15.0,
                  ),
                ),
                const SizedBox(height: 4.0),
                Text(
                  "₹ ${_selectedSeat.length * 100}",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const Spacer(),
            PrimaryButton(
              width: 150,
              margin: const EdgeInsets.only(bottom: 16.0, top: 10),
              color: Colors.red,
              borderRadius: 10.0,
              text: "Pay",
              fontWeight: FontWeight.w600,
              onTap: () {
                //!
              },
            ),
          ],
        ),
      ),
    );
  }
}

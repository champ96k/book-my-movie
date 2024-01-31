import 'package:book_my_movie/core/enum/seat_status.dart';
import 'package:book_my_movie/features/ticket_booking/data/models/cinema_list_model.dart';
import 'package:book_my_movie/features/ticket_booking/presentation/pages/components/pay_footer_widget.dart';
import 'package:book_my_movie/features/ticket_booking/presentation/pages/components/screen_placeholder.dart';
import 'package:book_my_movie/features/ticket_booking/presentation/pages/components/ticket_booking_top_header.dart';
import 'package:book_my_movie/features/ticket_booking/presentation/ticket_booking_cubit/ticket_booking_cubit.dart';
import 'package:book_my_movie/src/widgets/app_bar/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const int rowCount = 10;

class SeatSelectionScreen extends StatelessWidget {
  const SeatSelectionScreen({
    super.key,
    required this.cinema,
    required this.languages,
    required this.movieName,
    required this.date,
    required this.selectedTime,
  });

  final Cinema cinema;
  final String languages;
  final String movieName;
  final String date;
  final String selectedTime;

  @override
  Widget build(BuildContext context) {
    final ticketBookingCubit = context.read<TicketBookingCubit>();
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: CustomAppBar(
        showSearch: false,
        title: '$movieName - $languages',
        subTitle: cinema.address ?? '',
      ),
      body: BlocBuilder<TicketBookingCubit, TicketBookingState>(
        builder: (context, state) {
          if (state is SeatSelectionState) {
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  TicketBookingTopHeader(title: '$date - $selectedTime'),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: SingleChildScrollView(
                        child: DataTable(
                          columnSpacing: 4.0,
                          columns: [
                            const DataColumn(label: Text('')),
                            for (int i = 1; i <= rowCount; i++)
                              DataColumn(label: Text('$i')),
                          ],
                          rows: [
                            for (int row = 0; row < rowCount; row++)
                              DataRow(
                                cells: [
                                  DataCell(Text(
                                      '${String.fromCharCode(65 + row)}  ')),
                                  for (int col = 0; col < rowCount; col++)
                                    DataCell(
                                      GestureDetector(
                                        onTap: () {
                                          ticketBookingCubit
                                              .toggleSeatSelection(row, col);
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: 30,
                                          width: 30,
                                          padding: const EdgeInsets.all(2.0),
                                          margin: const EdgeInsets.all(2.0),
                                          decoration: BoxDecoration(
                                            color: _getSeatColor(
                                                state.seatStatusList[row][col]),
                                            borderRadius:
                                                BorderRadius.circular(4.0),
                                            border: Border.all(
                                              color: _getBorderColor(state
                                                  .seatStatusList[row][col]),
                                            ),
                                          ),
                                          child: Text(
                                            '${col + 1} ',
                                            style: TextStyle(
                                              color: _getTextColor(state
                                                  .seatStatusList[row][col]),
                                              fontSize: 14.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      // ElevatedButton(
                                      //   onPressed: () {
                                      //     ticketBookingCubit
                                      //         .toggleSeatSelection(row, col);
                                      //   },
                                      //   style: ButtonStyle(
                                      //     backgroundColor: MaterialStateProperty
                                      //         .resolveWith<Color>(
                                      //       (states) {
                                      //         switch (state.seatStatusList[row]
                                      //             [col]) {
                                      //           case SeatStatus.available:
                                      //             return Colors.blueGrey;
                                      //           case SeatStatus.sold:
                                      //             return Colors.grey;
                                      //           case SeatStatus.selected:
                                      //             return Colors.green;
                                      //           default:
                                      //             return Colors.white;
                                      //         }
                                      //       },
                                      //     ),
                                      //   ),
                                      //   child: Text(
                                      //     '${col + 1} ',
                                      //     style: const TextStyle(
                                      //       fontSize: 12,
                                      //       fontWeight: FontWeight.bold,
                                      //     ),
                                      //   ),
                                      // ),
                                    ),
                                ],
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const ScreenPlaceholder(),
                ],
              ),
            );
          } else {
            return Text("$state");
          }
        },
      ),
      bottomNavigationBar: const PayFooterWidget(),
    );
  }

  Color _getBorderColor(SeatStatus seatStatusList) {
    switch (seatStatusList) {
      case SeatStatus.available:
        return Colors.green;
      case SeatStatus.sold:
        return Colors.white;
      default:
        return Colors.transparent;
    }
  }

  Color? _getSeatColor(SeatStatus seatStatusList) {
    switch (seatStatusList) {
      case SeatStatus.available:
        return Colors.white;
      case SeatStatus.sold:
        return Colors.black12;
      case SeatStatus.selected:
        return Colors.green;
      default:
        return null;
    }
  }

  Color _getTextColor(SeatStatus seatStatusList) {
    switch (seatStatusList) {
      case SeatStatus.available:
        return Colors.black87;

      default:
        return Colors.white;
    }
  }
}

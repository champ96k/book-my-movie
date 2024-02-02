import 'package:book_my_movie/core/app_configs/screen_names.dart';
import 'package:book_my_movie/core/enum/seat_status.dart';
import 'package:book_my_movie/core/extension/context_extension.dart';
import 'package:book_my_movie/core/extension/string_extenstion_method.dart';
import 'package:book_my_movie/features/ticket_booking/data/models/cinema_list_model.dart';
import 'package:book_my_movie/features/ticket_booking/data/models/ticket_book_model/ticket_book_model.dart';
import 'package:book_my_movie/features/ticket_booking/presentation/pages/components/pay_footer_widget.dart';
import 'package:book_my_movie/features/ticket_booking/presentation/pages/components/screen_placeholder.dart';
import 'package:book_my_movie/features/ticket_booking/presentation/pages/components/seleat_seat_bottomsheet.dart';
import 'package:book_my_movie/features/ticket_booking/presentation/pages/components/ticket_booking_top_header.dart';
import 'package:book_my_movie/features/ticket_booking/presentation/ticket_booking_cubit/ticket_booking_cubit.dart';
import 'package:book_my_movie/src/widgets/app_bar/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const int rowCount = 10;

class SeatSelectionScreen extends StatefulWidget {
  const SeatSelectionScreen({
    super.key,
    required this.cinema,
    required this.languages,
    required this.movieName,
    required this.date,
    required this.selectedTime,
    required this.cancellation,
  });

  final Cinema cinema;
  final String languages;
  final String movieName;
  final String date;
  final String selectedTime;
  final bool cancellation;

  @override
  State<SeatSelectionScreen> createState() => _SeatSelectionScreenState();
}

class _SeatSelectionScreenState extends State<SeatSelectionScreen> {
  TicketBookModel? model;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showSelectSeatBottomSheet();
      model = TicketBookModel(
        cinemaAddress: widget.cinema.address,
        cinemaName: widget.cinema.name,
        seletedDate: widget.date,
        langauage: widget.languages,
        movieName: widget.movieName,
        movieTime: widget.selectedTime,
        cancellation: widget.cancellation,
      );
      context.read<TicketBookingCubit>().setTicketBookModel(model);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ticketBookingCubit = context.read<TicketBookingCubit>();
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: CustomAppBar(
        showSearch: false,
        title: '${widget.movieName} - ${widget.languages}',
        subTitle: widget.cinema.address ?? '',
      ),
      body: BlocConsumer<TicketBookingCubit, TicketBookingState>(
        buildWhen: (previous, current) {
          if (current is SeatSelectionErrorState) {
            return false;
          } else {
            return true;
          }
        },
        listener: (context, state) {
          if (state is SeatSelectionErrorState) {
            state.errorMessage.showSnackBar(context);
          }
        },
        builder: (context, state) {
          if (state is SeatSelectionState) {
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  TicketBookingTopHeader(
                    title: '${widget.date} - ${widget.selectedTime}',
                    onEditTap: () => _showSelectSeatBottomSheet(),
                  ),
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
      bottomNavigationBar: PayFooterWidget(
        onTap: () {
          Navigator.pushNamed(
            context,
            ScreenNames.ticketDetailsScreen,
            arguments: {'ticketBookModel': ticketBookingCubit.ticketBookModel},
          );
        },
      ),
    );
  }

  void _showSelectSeatBottomSheet() {
    final _cubit = context.read<TicketBookingCubit>();
    context.showBottomSheet(
      content: SelectSetaBottomSheet(cubit: _cubit),
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

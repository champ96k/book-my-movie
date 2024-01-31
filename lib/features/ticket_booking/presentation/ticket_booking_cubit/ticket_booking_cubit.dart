import 'dart:math';

import 'package:book_my_movie/core/enum/seat_status.dart';
import 'package:book_my_movie/features/ticket_booking/presentation/pages/seat_selection_screen.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'ticket_booking_state.dart';

class TicketBookingCubit extends Cubit<TicketBookingState> {
  TicketBookingCubit() : super(TicketBookingInitial()) {
    initializeSeatStatus();
  }

  List<List<SeatStatus>> seatStatusList = [];
  Map<String, int> selectedSeatsCount = {};
  // Initial ticket count
  int _ticketCount = 1;

  // Initialize seat status and selected seats list
  void initializeSeatStatus() {
    seatStatusList = List.generate(
      rowCount,
      (row) => List.generate(rowCount, (col) {
        // Randomly mark some seats as sold
        return Random().nextInt(12) == col
            ? SeatStatus.sold
            : SeatStatus.available;
      }),
    );

    emit(SeatSelectionState(List.from(seatStatusList)));
  }

  // Toggle seat selection and update selected seats list
  void toggleSeatSelection(int row, int col) {
    SeatStatus currentStatus = seatStatusList[row][col];

    if (currentStatus == SeatStatus.available) {
      seatStatusList[row][col] = SeatStatus.selected;
      selectedSeatsCount['${String.fromCharCode(65 + row)}${col + 1}'] =
          _ticketCount++;
    } else if (currentStatus == SeatStatus.selected) {
      seatStatusList[row][col] = SeatStatus.available;
      selectedSeatsCount['${String.fromCharCode(65 + row)}${col + 1}'] =
          _ticketCount--;
      selectedSeatsCount.remove('${String.fromCharCode(65 + row)}${col + 1}');
    }

    emit(
      SeatSelectionState(
        List.from(seatStatusList),
        dateTime: DateTime.now().millisecond.toString(),
      ),
    );
  }

  // Get a list of selected seats
  List<String> getSelectedSeats() {
    return selectedSeatsCount.keys.toList();
  }

  // Get the ticket count for a specific seat
  int getTicketCount(int row, int col) {
    String seatKey = '${String.fromCharCode(65 + row)}${col + 1}';
    return selectedSeatsCount[seatKey] ?? 0;
  }
}

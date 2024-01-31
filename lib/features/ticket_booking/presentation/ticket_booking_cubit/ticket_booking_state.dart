part of 'ticket_booking_cubit.dart';

abstract class TicketBookingState extends Equatable {}

class TicketBookingInitial extends TicketBookingState {
  @override
  List<Object?> get props => ['TicketBookingInitial'];
}

class SeatSelectionState extends TicketBookingState {
  SeatSelectionState(this.seatStatusList, {this.dateTime});

  final List<List<SeatStatus>> seatStatusList;
  final String? dateTime;

  @override
  List<Object?> get props => [seatStatusList, dateTime];
}

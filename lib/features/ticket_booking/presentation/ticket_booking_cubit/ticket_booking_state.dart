part of 'ticket_booking_cubit.dart';

abstract class TicketBookingState extends Equatable {}

class TicketBookingInitial extends TicketBookingState {
  @override
  List<Object?> get props => ['TicketBookingInitial'];
}

class TicketLocationSelected extends TicketBookingState {
  TicketLocationSelected(this.location);

  final String location;

  @override
  List<Object?> get props => [location];
}

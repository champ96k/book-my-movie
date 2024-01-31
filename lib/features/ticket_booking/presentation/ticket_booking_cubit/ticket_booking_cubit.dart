import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'ticket_booking_state.dart';

class TicketBookingCubit extends Cubit<TicketBookingState> {
  TicketBookingCubit() : super(TicketBookingInitial());

  void selectLocation(String location) {}

  void selectCinema(String cinema) {}

  void selectSeat(String seat) {}
}

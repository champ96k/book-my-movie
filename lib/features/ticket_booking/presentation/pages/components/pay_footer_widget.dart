import 'package:book_my_movie/features/ticket_booking/presentation/pages/components/seat_placeholder_indicator.dart';
import 'package:book_my_movie/features/ticket_booking/presentation/ticket_booking_cubit/ticket_booking_cubit.dart';
import 'package:book_my_movie/src/widgets/button/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PayFooterWidget extends StatelessWidget {
  const PayFooterWidget({super.key, required this.onTap});
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    final _cubit = context.watch<TicketBookingCubit>();
    final _size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            color: Colors.black26,
            width: 0.4,
          ),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 24.0),
          const Row(
            children: [
              SizedBox(width: 16.0),
              SeatPlaceholderIndicator('Available'),
              SeatPlaceholderIndicator('Selected'),
              SeatPlaceholderIndicator('Sold'),
              Text("₹ 100 per ticket")
            ],
          ),
          const SizedBox(height: 24.0),
          if (_cubit.getSelectedSeats().length == _cubit.totalTicketCount)
            PrimaryButton(
              color: Colors.red,
              borderRadius: 10.0,
              width: _size.width * 0.85,
              text: "Pay ₹ ${_cubit.getSelectedSeats().length * 100}",
              fontWeight: FontWeight.w600,
              onTap: onTap,
            ),
          const SizedBox(height: 24.0),
        ],
      ),
    );
  }
}

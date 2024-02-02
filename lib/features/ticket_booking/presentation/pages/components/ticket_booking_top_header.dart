import 'package:book_my_movie/features/ticket_booking/presentation/ticket_booking_cubit/ticket_booking_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TicketBookingTopHeader extends StatelessWidget {
  const TicketBookingTopHeader({
    super.key,
    required this.title,
    required this.onEditTap,
  });
  final String title;
  final Function() onEditTap;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _cubit = context.watch<TicketBookingCubit>();

    return Container(
      width: _size.width,
      height: _size.height * 0.06,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: onEditTap,
            child: const Icon(
              Icons.edit,
              color: Colors.pink,
              size: 18,
            ),
          ),
          const SizedBox(width: 6.0),
          Text(
            "${_cubit.totalTicketCount} Tickets",
            style: const TextStyle(
              color: Colors.pink,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

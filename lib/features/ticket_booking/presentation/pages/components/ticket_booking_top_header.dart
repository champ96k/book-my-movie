import 'package:flutter/material.dart';

class TicketBookingTopHeader extends StatelessWidget {
  const TicketBookingTopHeader({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
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
          const Icon(
            Icons.edit,
            color: Colors.pink,
            size: 18,
          ),
          const SizedBox(width: 6.0),
          const Text(
            "2 Tickets",
            style: TextStyle(
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

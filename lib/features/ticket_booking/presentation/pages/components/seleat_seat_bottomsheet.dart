import 'package:book_my_movie/features/ticket_booking/presentation/ticket_booking_cubit/ticket_booking_cubit.dart';
import 'package:book_my_movie/src/widgets/button/primary_button.dart';
import 'package:flutter/material.dart';

class SelectSetaBottomSheet extends StatefulWidget {
  const SelectSetaBottomSheet({super.key, required this.cubit});

  final TicketBookingCubit cubit;

  @override
  State<SelectSetaBottomSheet> createState() => _SelectSetaBottomSheetState();
}

class _SelectSetaBottomSheetState extends State<SelectSetaBottomSheet> {
  int _seletedSeatCount = 0;
  @override
  void initState() {
    _seletedSeatCount = widget.cubit.totalTicketCount;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("How many seats?"),
        const SizedBox(height: 20.0),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            6,
            (i) => CircleAvatar(
              backgroundColor:
                  (i + 1) == _seletedSeatCount ? Colors.red : Colors.white,
              child: TextButton(
                onPressed: () {
                  widget.cubit.setTotalTicketCount(i + 1);
                  _seletedSeatCount = i + 1;
                  setState(() {});
                },
                child: Text(
                  "${i + 1}",
                  style: TextStyle(
                    color: (i + 1) == _seletedSeatCount
                        ? Colors.white
                        : Colors.black54,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ).toList(),
        ),
        const SizedBox(height: 20.0),
        const Text("Balcony"),
        const SizedBox(height: 10.0),
        Text(
          "₹ ${widget.cubit.totalTicketCount * 100}",
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 18.0,
          ),
        ),
        const SizedBox(height: 16.0),
        PrimaryButton(
          borderRadius: 6.0,
          color: Colors.red,
          text: "Select seats",
          onTap: () => Navigator.pop(context),
        ),
        const SizedBox(height: 16.0),
      ],
    );
  }
}

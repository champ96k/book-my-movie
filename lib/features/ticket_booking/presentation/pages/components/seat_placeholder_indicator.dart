import 'package:flutter/material.dart';

class SeatPlaceholderIndicator extends StatelessWidget {
  const SeatPlaceholderIndicator(this.indicator, {super.key});

  final String indicator;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 16,
          width: 16,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: _getColor(indicator),
            border: Border.all(
              color:
                  indicator == 'Available' ? Colors.green : Colors.transparent,
            ),
          ),
        ),
        const SizedBox(width: 10.0),
        Text(indicator),
        const SizedBox(width: 16.0),
      ],
    );
  }

  Color? _getColor(String indicator) {
    switch (indicator) {
      case 'Selected':
        return Colors.green;
      case 'Sold':
        return Colors.black26;
      default:
        return null;
    }
  }
}

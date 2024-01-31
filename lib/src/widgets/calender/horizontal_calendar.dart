import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HorizontalCalendar extends StatefulWidget {
  const HorizontalCalendar({super.key});

  @override
  State<HorizontalCalendar> createState() => _HorizontalCalendarState();
}

class _HorizontalCalendarState extends State<HorizontalCalendar> {
  String _selectedIndex = '';

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      DateTime currentDate = DateTime.now().add(const Duration(days: 0));
      String formattedDate = DateFormat('d').format(currentDate);
      if (mounted) {
        setState(() {
          _selectedIndex = formattedDate;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 30,
        itemBuilder: (context, index) {
          DateTime currentDate = DateTime.now().add(Duration(days: index));
          String formattedDay = DateFormat('EEE').format(currentDate);
          String formattedDate = DateFormat('d').format(currentDate);
          String formattedMonth = DateFormat('MMM').format(currentDate);

          return GestureDetector(
            onTap: () {
              setState(() => _selectedIndex = formattedDate);
            },
            child: Container(
              width: 75,
              decoration: BoxDecoration(
                color:
                    _selectedIndex == formattedDate ? Colors.red : Colors.white,
                border: Border.all(
                  color: _selectedIndex == formattedDay
                      ? Colors.white
                      : Colors.black12,
                  width: 0.4,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    formattedDay.toUpperCase(),
                    style: TextStyle(
                      fontSize: 12,
                      color: _selectedIndex == formattedDate
                          ? Colors.white
                          : Colors.black54,
                    ),
                  ),
                  Text(
                    formattedDate,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: _selectedIndex == formattedDate
                          ? Colors.white
                          : Colors.black54,
                    ),
                  ),
                  Text(
                    formattedMonth.toUpperCase(),
                    style: TextStyle(
                      fontSize: 12,
                      color: _selectedIndex == formattedDate
                          ? Colors.white
                          : Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

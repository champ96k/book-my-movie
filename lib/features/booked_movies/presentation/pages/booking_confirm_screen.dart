import 'package:book_my_movie/core/app_configs/screen_names.dart';
import 'package:book_my_movie/generated/assets.gen.dart';
import 'package:book_my_movie/src/widgets/button/primary_button.dart';
import 'package:flutter/material.dart';

class BookingConfirmScreen extends StatelessWidget {
  const BookingConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.json.done.lottie(),
          const SizedBox(height: 16.0),
          const Text(
            "Booking Confirm",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: _size.height * 0.3),
          PrimaryButton(
            width: _size.width * 0.8,
            borderRadius: 6.0,
            text: "Check booking",
            onTap: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                ScreenNames.homePage,
                (route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}

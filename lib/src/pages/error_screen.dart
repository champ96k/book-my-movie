import 'package:book_my_movie/generated/assets.gen.dart';
import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key, this.errorMessage = ''});

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Assets.json.error.lottie(),
            ),
            const SizedBox(height: 16.0),
            Text("Error: $errorMessage"),
          ],
        ),
      ),
    );
  }
}

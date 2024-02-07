import 'package:book_my_movie/generated/assets.gen.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Assets.json.loading.lottie(),
      ),
    );
  }
}

import 'package:book_my_movie/generated/assets.gen.dart';
import 'package:flutter/material.dart';

class ScreenPlaceholder extends StatelessWidget {
  const ScreenPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        RotatedBox(
          quarterTurns: 10,
          child: Assets.images.movieScreen.image(),
        ),
        const Positioned(
          bottom: 16,
          left: 0.0,
          right: 0.0,
          child: Center(
            child: Text(
              "All Eyes this way please",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

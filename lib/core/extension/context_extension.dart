import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  void showBottomSheet({required Widget content, bool isDismissible = false}) {
    showModalBottomSheet(
      context: this,
      backgroundColor: Colors.transparent,
      useSafeArea: false,
      isDismissible: isDismissible,
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Your bottom sheet content
              content,
              const SizedBox(height: 16.0),
            ],
          ),
        );
      },
    );
  }
}

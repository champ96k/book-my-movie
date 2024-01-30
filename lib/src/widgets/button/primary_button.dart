import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.text,
    required this.onTap,
    this.color = Colors.indigo,
    this.height,
    this.width,
    this.fontWeight = FontWeight.w400,
    this.textColor = Colors.white,
    this.borderWidth = 0.0,
    this.borderColor = Colors.transparent,
    this.borderRadius = 0.0,
  });

  final String text;
  final Function() onTap;
  final double? height;
  final double? width;
  final Color color;
  final Color textColor;
  final FontWeight fontWeight;
  final double borderWidth;
  final Color borderColor;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? size.height * 0.06,
        width: width ?? size.width,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
            width: borderWidth,
            color: borderColor,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}

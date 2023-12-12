import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backgroundColor,
      this.borderRadius,
      required this.text,
      required this.textColor,
      this.textSize, this.onPressed});

  final Color backgroundColor;
  final BorderRadius? borderRadius;
  final String text;
  final Color textColor;
  final double? textSize;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
        ),
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
            color: textColor,
            fontSize: textSize,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}

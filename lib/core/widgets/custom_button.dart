import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius,
    required this.text,
    this.textSize,
    this.onPressed,
  });
  final String text;
  final double? textSize;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
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
            borderRadius: borderRadius ??
                BorderRadius.circular(
                  12,
                ),
          ),
        ),
        child: Text(
          text,
          style: Styls.textStyle18.copyWith(
            color: textColor,
            fontWeight: FontWeight.bold,
            fontSize: textSize,
          ),
        ),
      ),
    );
  }
}

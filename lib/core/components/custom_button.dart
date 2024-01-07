import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onTap,
    required this.color,
    required this.text,
    required this.textStyle,
    this.horizontal = 20,
    this.vertical = 5,
  });

  final void Function()? onTap;
  final Color color;
  final String text;
  final TextStyle textStyle;
  final double horizontal;
  final double vertical;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding:
            EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(14)),
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}

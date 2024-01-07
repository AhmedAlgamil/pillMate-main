import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pill_mate/core/utils/app_colors.dart';

class CustomSquareButtom extends StatelessWidget {
  const CustomSquareButtom({
    super.key,
    required this.color,
    this.iconColor = AppColors.white,
    required this.onPressed,
    required this.icon,
  });
  final Color color;
  final Color iconColor;
  final void Function() onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 15.w,
      height: 50.h,
      onPressed: onPressed,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Icon(
        icon,
        color: iconColor,
        size: 20,
      ),
    );
  }
}

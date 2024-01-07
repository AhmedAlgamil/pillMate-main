import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({
    super.key,
    required this.dotsPosition
  });
  final int? dotsPosition;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
        dotsCount: 3,
        position: dotsPosition!.toInt(),
        decorator: DotsDecorator(
          activeColor: AppColors.kPrimaryColor,
          color: AppColors.kPrimaryColor,
          spacing: const EdgeInsets.symmetric(vertical: 12, horizontal: 2),
          size: const Size(18.0, 7.0),
          activeSize: const Size(18.0, 7.0),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.5)),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.5)),
        ));
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pill_mate/core/utils/app_colors.dart';

import '../../../../core/utils/app_text_style.dart';

class CustomProductNameDescriptionPriceColumn extends StatelessWidget {
  const CustomProductNameDescriptionPriceColumn({
    super.key,
    required this.productName,
    required this.description,
    required this.price,
  });
  final String productName;
  final String description;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          productName,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          description,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          '$price\$',
          style: boldStyle(color: AppColors.darkGreen, fontSize: 12),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pill_mate/core/utils/app_assets.dart';
import 'package:pill_mate/core/utils/app_colors.dart';

import '../../../../core/utils/app_text_style.dart';

class CustomPaymentMethodDataRow extends StatelessWidget {
  const CustomPaymentMethodDataRow({
    super.key,
    required this.data,
  });
  final String data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(ImageAssets.visa),
        SizedBox(
          width: 10.w,
        ),
        Text(
          data,
          style: regularStyle(color: AppColors.grey, fontSize: 16),
        ),
      ],
    );
  }
}

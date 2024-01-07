

import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_style.dart';

class Price extends StatelessWidget {
  const Price({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '12:00 \$',
      style: boldStyle(color: AppColors.kPrimaryColor, fontSize: 20),
      overflow: TextOverflow.visible,
    );
  }
}


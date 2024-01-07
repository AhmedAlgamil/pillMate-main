import 'package:flutter/material.dart';
import 'package:pill_mate/features/home/presentation/widgets/common/main_button.dart';

import '../../../../../core/utils/app_colors.dart';

class ProductScreenButtons extends StatelessWidget {
  const ProductScreenButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: MainButton(
          backGroundColor: AppColors.white,
          backGroundColorAfterClicked: AppColors.kPrimaryColor,
          borderColor: AppColors.kPrimaryColor,
          buttonName: 'Add To Card',
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        )),
        const SizedBox(
          width: 16,
        ),
        Expanded(
            child: MainButton(
          backGroundColor: AppColors.kPrimaryColor,
          borderColor: AppColors.kPrimaryColor,
          buttonName: 'Buy Now',
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        )),
      ],
    );
  }
}
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:pill_mate/features/home/presentation/widgets/common/main_button.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_style.dart';

class FavouriteProductCardBaseContent extends StatelessWidget {
  const FavouriteProductCardBaseContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: SizedBox(
                height: constraints.maxHeight / 2,
                width: constraints.maxWidth,
                child: Image.asset(ImageAssets.product)),
          ),
          const Spacer(
            flex: 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  'Vitaferrol B12 Vitaferrol B12 ',
                  style: regularStyle(
                      color: const Color(0xff636161), fontSize: 16),
                  minFontSize: 14,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                AutoSizeText(
                  '12 \$',
                  style: regularStyle(
                      color: const Color(0xff636161), fontSize: 16),
                  minFontSize: 14,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 2,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: MainButton(
                backGroundColor: AppColors.white,
                backGroundColorAfterClicked: AppColors.kPrimaryColor,
                borderColor: AppColors.kPrimaryColor,
                buttonName: 'Add To Cart',
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 8)),
          ),
          const Spacer(),
        ],
      );
    });
  }
}

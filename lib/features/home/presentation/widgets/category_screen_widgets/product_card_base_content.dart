import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:pill_mate/features/home/presentation/widgets/category_screen_widgets/price_and_cart_icon.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_text_style.dart';

class ProductCardBaseContent extends StatelessWidget {
  const ProductCardBaseContent({super.key, required this.productName});
  final String productName;

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
            child: AutoSizeText(
              productName,
              style: regularStyle(color: const Color(0XFF121212), fontSize: 16),
              minFontSize: 14,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const Spacer(
            flex: 2,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: PriceAndCartIconRow(),
          ),
          const Spacer(),
        ],
      );
    });
  }
}

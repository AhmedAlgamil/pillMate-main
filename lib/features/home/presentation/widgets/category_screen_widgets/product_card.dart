import 'package:flutter/material.dart';
import 'package:pill_mate/core/functions/navigate.dart';
import 'package:pill_mate/core/routes/app_routes.dart';
import 'package:pill_mate/features/home/presentation/widgets/category_screen_widgets/discount.dart';
import 'package:pill_mate/features/home/presentation/widgets/common/favourite.dart';
import 'package:pill_mate/features/home/presentation/widgets/category_screen_widgets/product_card_base_content.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.productName});
  final String productName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => navigate(context: context, route: Routes.productRoute),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 2,
        child: AspectRatio(
          aspectRatio: 0.9,
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xfff5f5f5),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 4,
                  blurRadius: 6,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: Stack(
              children: [
                //product's image,name,price and cart icon
                ProductCardBaseContent(productName: productName),
                //discount widget
                const Positioned(
                  left: 8,
                  top: 13.5,
                  child: Discount(),
                ),
                //favourite widget
                const Positioned(
                  right: 8,
                  top: 13.5,
                  child: FavouriteIcon(
                    isForFavouriteScreen: false,
                    iconHeight: 28,
                    iconWidth: 28,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

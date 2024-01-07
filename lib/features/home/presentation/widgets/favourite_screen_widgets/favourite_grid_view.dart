import 'package:flutter/material.dart';
import 'package:pill_mate/core/helpers/responsive_grid_view.dart';
import 'package:pill_mate/features/home/presentation/widgets/favourite_screen_widgets/favourite_product_card.dart';

class FavouriteGridView extends StatelessWidget {
  const FavouriteGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: calculateCrossAxisCount(context),
          mainAxisSpacing: 12,
          crossAxisSpacing: 16,
          childAspectRatio: .9),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return const FavouriteProductCard();
        },
        childCount: 5,
      ),
    );
  }
}

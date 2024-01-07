import 'package:flutter/material.dart';
import 'package:pill_mate/core/helpers/responsive_grid_view.dart';
import 'package:pill_mate/features/home/presentation/widgets/category_screen_widgets/product_card.dart';

class SimilarProductsGridView extends StatelessWidget {
  const SimilarProductsGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: 2,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: calculateCrossAxisCount(context),
          childAspectRatio: 0.9,
          crossAxisSpacing: 16,
          mainAxisSpacing: 12),
      itemBuilder: (context, index) {
        return const ProductCard(productName: 'Vitaferrol B12 Vitaferrol B12');
      },
    );
  }
}

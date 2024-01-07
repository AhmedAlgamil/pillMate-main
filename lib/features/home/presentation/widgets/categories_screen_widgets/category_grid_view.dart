import 'package:flutter/material.dart';
import 'package:pill_mate/core/helpers/responsive_grid_view.dart';
import 'package:pill_mate/features/home/data/models/category_model.dart';
import 'package:pill_mate/features/home/presentation/widgets/categories_screen_widgets/category_card.dart';

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({
    super.key,
    required this.categories,
  });

  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: categories.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: calculateCrossAxisCount(context),
            mainAxisSpacing: 12,
            crossAxisSpacing: 16,
            childAspectRatio: 1.85),
        itemBuilder: (context, index) {
          return CategoriesCard(
            category: categories[index],
          );
        });
  }
}



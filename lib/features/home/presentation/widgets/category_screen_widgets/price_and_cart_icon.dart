import 'package:flutter/material.dart';
import 'package:pill_mate/features/home/presentation/widgets/category_screen_widgets/cart.dart';
import 'package:pill_mate/features/home/presentation/widgets/category_screen_widgets/price.dart';

class PriceAndCartIconRow extends StatelessWidget {
  const PriceAndCartIconRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 3,
          child: Price(),
        ),
        CartIcon()
      ],
    );
  }
}
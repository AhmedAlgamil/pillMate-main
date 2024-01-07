import 'package:flutter/material.dart';

import 'package:pill_mate/features/payment/presentation/components/custom_change_button.dart';

class CustomTitlewithButtonRow extends StatelessWidget {
  const CustomTitlewithButtonRow({
    super.key,
    required this.title,
    required this.onPressed,
  });
  final String title;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium!,
        ),
        CustomChangeButton(
          onPressed: onPressed,
        )
      ],
    );
  }
}

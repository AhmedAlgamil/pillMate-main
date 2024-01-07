import 'package:flutter/material.dart';


class CustomRowReceipt extends StatelessWidget {
  const CustomRowReceipt({
    super.key,
    required this.text,
    required this.price,
  });
  final String text;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium!,
          ),
          Text(
            '$price\$',
            style:Theme.of(context).textTheme.bodyLarge!,
          ),
        ],
      ),
    );
  }
}

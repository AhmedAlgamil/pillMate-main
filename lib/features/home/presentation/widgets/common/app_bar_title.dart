import 'package:flutter/material.dart';


class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    super.key,
    required this.appBarTitle
  });
  final String appBarTitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      appBarTitle,
      style: Theme.of(context).textTheme.bodyLarge,

      );

  }
}

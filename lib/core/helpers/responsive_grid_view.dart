import 'package:flutter/material.dart';

int calculateCrossAxisCount(BuildContext context) {
  final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
  final shortestSide = MediaQuery.of(context).size.shortestSide;
  final isMobileLayout = shortestSide < 600;
  int crossAxisCount;

  if (isMobileLayout && isPortrait) {
    crossAxisCount = 2; // Mobile portrait
  } else if (isMobileLayout && !isPortrait) {
    crossAxisCount = 3; // Mobile landscape
  } else {
    crossAxisCount =
        3; // Tablet (or larger) can use 3 columns in any orientation
  }

  return crossAxisCount;
}
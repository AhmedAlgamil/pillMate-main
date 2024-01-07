import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/app_colors.dart';

class AppBarPopIcon extends StatelessWidget {
  const AppBarPopIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 28,
      padding: EdgeInsets.zero,
      onPressed: () {Navigator.pop(context);},
      icon:  Icon(
        FontAwesomeIcons.chevronLeft,
        color: AppColors.kPrimaryColor,
      ),
    );
  }
}

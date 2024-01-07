import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CountWidgetButton extends StatelessWidget {
  const CountWidgetButton(
      {super.key, required this.buttonIcon, required this.buttonColor,required this.onPressed});
  final String buttonIcon;
  final Color buttonColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            elevation: const MaterialStatePropertyAll(0),
            padding: const MaterialStatePropertyAll(EdgeInsets.all(0)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            )),
            backgroundColor: MaterialStatePropertyAll(buttonColor),
            minimumSize: const MaterialStatePropertyAll(Size(40, 40))),
        child: SvgPicture.asset(
          buttonIcon,
        ));
  }
}

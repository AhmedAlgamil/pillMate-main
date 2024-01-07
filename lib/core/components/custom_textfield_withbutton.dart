import 'package:flutter/material.dart';
import 'package:pill_mate/core/utils/app_colors.dart';
import 'package:pill_mate/core/components/custom_button.dart';

import '../utils/app_text_style.dart';

class CustomTextFieldWithButton extends StatelessWidget {
  const CustomTextFieldWithButton({
    super.key,
    this.onTap,
    required this.isButton,
    required this.hintText,
    this.buttonText,
    this.buttonColor,
    this.buttonTextStyle,
  });
  final void Function()? onTap;
  final bool isButton;
  final String hintText;
  final String? buttonText;
  final Color? buttonColor;
  final TextStyle? buttonTextStyle;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColors.black,
      decoration: InputDecoration(
        suffixIcon: isButton
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomButton(
                  onTap: onTap,
                  color: buttonColor ?? AppColors.kPrimaryColor,
                  text: buttonText ?? '',
                  textStyle: Theme.of(context).textTheme.bodyMedium!,
                ),
              )
            : null,
        hintText: hintText,
        hintStyle: regularStyle(color: AppColors.grey, fontSize: 14),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.darkGrey, width: 1.0),
            borderRadius: BorderRadius.circular(16)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}

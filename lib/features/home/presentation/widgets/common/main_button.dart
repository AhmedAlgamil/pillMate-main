// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_style.dart';


class MainButton extends StatefulWidget {
  const MainButton({
    Key? key,
    this.backGroundColorAfterClicked,
    required this.buttonName,
    required this.contentPadding,
    required this.backGroundColor,
    required this.borderColor,
  }) : super(key: key);
  final String buttonName;
  final EdgeInsetsGeometry contentPadding;
  final Color backGroundColor;
  final Color borderColor;
  //! it could be null because i use this widget for BuyNow button in product page .. and this button doesn't change its color when clicked
  //! so this will not take value in Buy Now button and after clicked it will still with its background color
  final Color? backGroundColorAfterClicked;

  @override
  State<MainButton> createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isClicked = !isClicked;
        });
      },
      child: Center(
        child: Container(
          width: double.infinity,
          padding: widget.contentPadding,
          decoration: BoxDecoration(
            color: isClicked
                ? widget.backGroundColorAfterClicked ?? widget.backGroundColor
                : widget.backGroundColor,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              width: 1,
              color: widget.borderColor,
            ),
          ),
          child: Center(
            child: Text(
              widget.buttonName,
              style: regularStyle(
                  color: AppColors.kPrimaryColor, fontSize: 16),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
    );
  }
}

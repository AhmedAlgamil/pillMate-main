import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_style.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key, required this.onChanged, this.hintText,this.textEditingController});
  final void Function(String)? onChanged;
  final String? hintText;
  final TextEditingController? textEditingController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: TextFormField(
         controller: textEditingController,
        onChanged: onChanged,
        style: regularStyle(color: AppColors.black, fontSize: 18),
        cursorColor: AppColors.kPrimaryColor,
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: Color(0xffC5C5C5), width: 1.3)),
            focusedBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                borderSide:
                    BorderSide(color: AppColors.kPrimaryColor, width: 1.3)),
            hintText: hintText,
            prefixIconConstraints: const BoxConstraints(
              minWidth: 64,
              minHeight: 36,
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: SvgPicture.asset(
                ImageAssets.searchIcon,
              ),
            ),
            hintStyle:
                regularStyle(color: const Color(0xff636161), fontSize: 18)),
      ),
    );
  }
}

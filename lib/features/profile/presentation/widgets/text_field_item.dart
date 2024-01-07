import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../generated/assets.dart';

class TextFieldItem extends StatelessWidget {
  TextFieldItem({
    super.key,
    this.itemTextEditingController,
    this.isDarkEnabled = true,
    this.isObsecure = false,
    this.prefixImage,
    this.labelText,
  });

  String? prefixImage, labelText;
  TextEditingController? itemTextEditingController;
  bool isDarkEnabled, isObsecure;

  @override
  Widget build(BuildContext context) {
    MediaQueryData mq = MediaQuery.of(context);
    ThemeData th = Theme.of(context);
    return Container(
      margin: const EdgeInsets.only(bottom: 5.0, top: 5.0),
      height: mq.size.height * 0.1,
      decoration: BoxDecoration(
        color: th.brightness == Brightness.dark
            ? AppColors.darkContainer
            : AppColors.transparent,
        border: Border.all(
            width: 1,
            color: th.brightness == Brightness.dark
                ? AppColors.white
                : AppColors.grey),
        borderRadius: BorderRadius.all(
          Radius.circular(
            10,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Image(
                width: mq.size.width * 0.08,
                height: mq.size.height * 0.08,
                color: th.iconTheme.color,
                image: AssetImage(prefixImage!),
              ),
            ),
            VerticalDivider(
                thickness: 1,
                width: mq.size.width * 0.1,
                color: th.dividerColor),
            Expanded(
              child: TextField(
                controller: itemTextEditingController,
                style: th.textTheme.titleLarge,
                obscureText: isObsecure,
                keyboardType: isObsecure ? TextInputType.visiblePassword : null,
                decoration: InputDecoration(
                  labelText: labelText,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: th.brightness == Brightness.dark
                        ? AppColors.darkContainer
                        : AppColors.transparent),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: th.brightness == Brightness.dark
                        ? AppColors.darkContainer
                        : AppColors.transparent),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: th.brightness == Brightness.dark
                        ? AppColors.darkContainer
                        : AppColors.transparent),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Image(
                width: mq.size.width * 0.08,
                height: mq.size.height * 0.08,
                color: AppColors.kPrimaryColor,
                image: AssetImage(Assets.imagesEdit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

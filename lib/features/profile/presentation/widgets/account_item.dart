import 'package:flutter/material.dart';
import 'package:pill_mate/core/utils/app_colors.dart';

import '../../../../core/utils/themes.dart';

class AccountItem extends StatelessWidget {
  AccountItem(
      {super.key,
      this.suffixImage,
      this.imageHeight,
      this.itemHeight,
      this.imageWidth,
      this.preffixImage,
      this.onTapAction,
      this.isDarkModeEnabled = true,
      this.title});

  double? imageWidth, imageHeight, itemHeight;
  String? title, preffixImage, suffixImage;
  GestureTapCallback? onTapAction;
  bool isDarkModeEnabled;
  //bool
  @override
  Widget build(BuildContext context) {
    ThemeData th = Theme.of(context);
    return InkWell(
      onTap: onTapAction,
      child: Container(
        margin: const EdgeInsets.only(left: 15.0, right: 15, bottom: 10),
        height: itemHeight,
        decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: th.brightness == Brightness.dark
                  ? AppColors.white
                  : AppColors.grey,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Row(
            children: [
              Image(
                width: imageWidth,
                height: imageHeight,
                color: th.brightness == Brightness.dark
                    ? AppColors.white
                    : AppColors.grey ,
                //color: th.,
                image: AssetImage(preffixImage!),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    title!,
                  ),
                ),
              ),
              if (suffixImage == null) Container(),
              if (suffixImage != null)
                Image(
                  width: imageWidth,
                  height: imageHeight,
                  color: th.primaryColorLight,
                  image: AssetImage(suffixImage!),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/themes.dart';
import '../../../../generated/assets.dart';

class ToggleItem extends StatelessWidget {
  ToggleItem({
    super.key,
    this.imageWidth,
    this.imageHeight,
    this.title = "untitleed",
    this.preffixImage = "",
    this.isEnabled = true,
    this.itemHeight,
    this.onTapAction,
    this.onTapItemAction,
  });

  double? imageWidth, imageHeight, itemHeight;
  String? title, preffixImage;
  bool isEnabled;
  GestureTapCallback? onTapAction, onTapItemAction;

  @override
  Widget build(BuildContext context) {
    ThemeData th = Theme.of(context);
    // isEnabled ? AppColors.black : AppColors.grey
    return InkWell(
      onTap: onTapItemAction,
      child: Container(
        margin: const EdgeInsets.only(left: 15.0, right: 15, bottom: 10),
        height: itemHeight!,
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
                image: AssetImage(preffixImage!),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(title!, style: th.textTheme.titleSmall),
                ),
              ),
              InkWell(
                onTap: onTapAction,
                child: Image(
                  width: imageWidth,
                  height: imageHeight,
                  color: isEnabled ? AppColors.kPrimaryColor : AppColors.grey,
                  image: AssetImage(isEnabled
                      ? Assets.imagesToggleOnCircle
                      : Assets.imagesToggleOffCircle),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

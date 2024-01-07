import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:pill_mate/core/components/back_arrow.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    this.img,
    required this.title,
  });

  final String? img;
  final String title;

  @override
  Widget build(BuildContext context) {
    return img == null
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            textDirection: TextDirection.rtl,
            children: [
              const Spacer(),
              Text(
                title,
                style:Theme.of(context).textTheme.bodyLarge!,
                maxLines: 1,
                textAlign: TextAlign.end,
              ),
              const Spacer(),
              const BackArrow(),
            ],
          )
        : Row(
            textDirection: TextDirection.rtl,
            children: [
              Image.asset(
                img!,
                height: 21.93.h,
                width: 19.5.w,
              ),
              SizedBox(
                width: 8.h,
              ),
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontSize: 18),
              ),
              const Spacer(),
              const BackArrow(),
            ],
          );
  }
}

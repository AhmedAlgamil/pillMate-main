import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pill_mate/core/utils/app_strings.dart';
import 'package:pill_mate/core/components/custom_textfield_withbutton.dart';

class CustomVisaData extends StatelessWidget {
  const CustomVisaData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(AppStrings.enterCardnNum),
          SizedBox(
            height: 20.h,
          ),
          const CustomTextFieldWithButton(
              isButton: false, hintText: 'Card Number'),
          SizedBox(
            height: 30.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 170.w,
                height: 100.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(AppStrings.expiryDate),
                    SizedBox(
                      height: 10.h,
                    ),
                    const Expanded(
                      child: CustomTextFieldWithButton(
                          isButton: false, hintText: 'MM/YY'),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              SizedBox(
                width: 170.w,
                height: 100.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(AppStrings.cvv),
                    SizedBox(
                      height: 10.h,
                    ),
                    const Expanded(
                      child: CustomTextFieldWithButton(
                          isButton: false, hintText: '123'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

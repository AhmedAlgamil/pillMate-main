import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pill_mate/core/utils/app_assets.dart';
import 'package:pill_mate/core/utils/app_colors.dart';
import 'package:pill_mate/core/utils/app_strings.dart';
import 'package:pill_mate/core/components/custom_appbar.dart';
import 'package:pill_mate/core/components/custom_button.dart';
import 'package:pill_mate/core/components/custom_textfield_withbutton.dart';
import 'package:pill_mate/features/payment/data/local_data_source.dart';
import 'package:pill_mate/features/payment/presentation/components/custom_row_receipt.dart';
import 'package:pill_mate/features/payment/presentation/components/custom_visa_data.dart';

import '../../../../core/utils/app_text_style.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  PaymentType groupValue = PaymentType.vodafoneCash;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const CustomAppBar(
                title: AppStrings.paymentDetails,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomTextFieldWithButton(
                onTap: () {},
                isButton: true,
                hintText: AppStrings.discountCopoun,
                buttonText: AppStrings.apply,
                buttonColor: AppColors.kPrimaryColor,
                buttonTextStyle:
                    regularStyle(color: AppColors.black, fontSize: 12),
              ),
              SizedBox(
                height: 20.h,
              ),
              const CustomRowReceipt(
                text: AppStrings.subtotal,
                price: '100',
              ),
              const CustomRowReceipt(
                text: AppStrings.delivery,
                price: '10',
              ),
              SizedBox(
                height: 20.h,
              ),
              Divider(
                indent: 5.w,
                endIndent: 5.w,
                thickness: 0.8,
                color: AppColors.grey,
              ),
              const CustomRowReceipt(
                text: AppStrings.total,
                price: '110',
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Radio(
                            activeColor: AppColors.darkGreen,
                            value: PaymentType.vodafoneCash,
                            groupValue: groupValue,
                            onChanged: (value) {
                              setState(() {
                                groupValue = value as PaymentType;
                                print(groupValue);
                              });
                            },
                          ),
                          Expanded(
                            child: Image.asset(
                              ImageAssets.vodCash,
                              fit: BoxFit.contain,
                            ),
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                    Expanded(
                      child: Row(
                        children: [
                          Radio(
                            activeColor: AppColors.darkGreen,
                            value: PaymentType.visa,
                            groupValue: groupValue,
                            onChanged: (value) {
                              setState(() {
                                groupValue = value as PaymentType;
                                print(groupValue);
                              });
                            },
                          ),
                          Expanded(
                            child: Image.asset(
                              ImageAssets.visa,
                              fit: BoxFit.none,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              groupValue == PaymentType.visa
                  ? const CustomVisaData()
                  : const CustomTextFieldWithButton(
                      isButton: false, hintText: 'Holaa'),
              SizedBox(
                height: 30.h,
              ),
              CustomButton(
                onTap: () {},
                color: AppColors.kPrimaryColor,
                text: 'Pay',
                textStyle: regularStyle(color: AppColors.black, fontSize: 16),
                horizontal: 170.w,
                vertical: 15.h,
              )
            ],
          ),
        ),
      )),
    );
  }
}

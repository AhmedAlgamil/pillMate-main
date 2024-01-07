import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pill_mate/core/utils/app_assets.dart';
import 'package:pill_mate/core/utils/app_colors.dart';
import 'package:pill_mate/core/utils/app_strings.dart';
import 'package:pill_mate/core/components/custom_appbar.dart';
import 'package:pill_mate/core/components/custom_button.dart';
import 'package:pill_mate/features/payment/presentation/components/custom_payment_method_row.dart';
import 'package:pill_mate/features/payment/presentation/components/custom_product_name_price_desc.dart';
import 'package:pill_mate/features/payment/presentation/components/custom_row_receipt.dart';
import 'package:pill_mate/features/payment/presentation/components/custom_square_button.dart';
import 'package:pill_mate/features/payment/presentation/components/custom_title_with_button_row.dart';

import '../../../../core/utils/app_text_style.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(title: AppStrings.details),
              SizedBox(
                height: 20.h,
              ),
              CustomTitlewithButtonRow(
                onPressed: () {},
                title: AppStrings.deliveryAddress,
              ),
              Row(
                children: [
                  Text(
                    '25 Nasr City, Egypt',
                    style:Theme.of(context).textTheme.titleSmall!,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              const Divider(
                thickness: 1.5,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomTitlewithButtonRow(
                onPressed: () {},
                title: AppStrings.paymentMethod,
              ),
              const CustomPaymentMethodDataRow(
                data: 'XXXXXXXXXXXXXX',
              ),
              SizedBox(
                height: 10.h,
              ),
              const Divider(
                thickness: 1.5,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomTitlewithButtonRow(
                onPressed: () {},
                title: AppStrings.order,
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Image.asset(ImageAssets.product),
                  SizedBox(
                    width: 10.w,
                  ),
                  const CustomProductNameDescriptionPriceColumn(
                    productName: 'Product Name',
                    description: 'description',
                    price: '12',
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  CustomSquareButtom(
                      color: AppColors.lightGrey,
                      icon: Icons.remove,
                      onPressed: () {},
                      iconColor: AppColors.black),
                  SizedBox(
                    width: 15.w,
                  ),
                  Text(
                    '1',
                    style:
                        Theme.of(context).textTheme.bodyLarge,
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  CustomSquareButtom(
                    color: AppColors.darkGreen,
                    icon: Icons.add,
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              const Divider(
                thickness: 1.5,
              ),
              CustomRowReceipt(text: AppStrings.delivery, price: 'Free '),
              SizedBox(
                height: 10.h,
              ),
              CustomRowReceipt(text: AppStrings.total, price: '100'),
              SizedBox(
                height: 40.h,
              ),
              CustomButton(
                onTap: () {},
                color: AppColors.kPrimaryColor,
                text: 'Pay Now',
                textStyle: regularStyle(color: AppColors.black, fontSize: 16),
                horizontal: 150.w,
                vertical: 15.h,
              )
            ],
          ),
        ),
      )),
    );
  }
}

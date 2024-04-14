import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_app/core/helpers/app_assets.dart';
import 'package:payment_app/core/helpers/spacing.dart';
import 'package:payment_app/core/router/app_router_paths.dart';
import 'package:payment_app/core/themes/colors_manager.dart';
import 'package:payment_app/core/widgets/custom_appbar.dart';
import 'package:payment_app/core/widgets/custom_button.dart';
import 'package:payment_app/features/checkout/presentation/widgets/order_property_value/order_property_value.dart';
import 'package:payment_app/features/checkout/presentation/widgets/total_amount/total_amount.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'My Cart'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            verticalSpace(25),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 56.w),
                child: Image.asset(AppAssets.basket)),
            verticalSpace(20),
            const OrderPropertyValue(
                orderProperty: 'Order Subtotal', orderPropertyPrice: 42.97),
            const OrderPropertyValue(
                orderProperty: 'Discount', orderPropertyPrice: 0),
            const OrderPropertyValue(
                orderProperty: 'Shipping', orderPropertyPrice: 8),
            verticalSpace(20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.w),
              child: const Divider(
                color: ColorsManager.greyColor,
                thickness: 2,
              ),
            ),
            verticalSpace(20),
            const TotalAmount(totalAmount: 50.97),
            verticalSpace(20),
            CustomButton(
                buttonText: 'Complete Payment',
                onTap: () {
                  Navigator.pushNamed(context, AppRouterPaths.details);
                })
          ],
        ),
      ),
    );
  }
}

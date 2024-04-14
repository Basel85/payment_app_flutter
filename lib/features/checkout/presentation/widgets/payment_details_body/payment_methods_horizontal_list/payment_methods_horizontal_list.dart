import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_app/core/constants/constants.dart';
import 'package:payment_app/core/helpers/spacing.dart';
import 'package:payment_app/features/checkout/presentation/widgets/payment_details_body/payment_methods_horizontal_list/payment_method_item/payment_method_item.dart';

class PaymentMethodHorizontalList extends StatelessWidget {
  const PaymentMethodHorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62.h,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          itemBuilder: (context, index) => PaymentMethodItem(
                paymentMethodIconAsset: paymentMethodsIcons[index],
              ),
          separatorBuilder: (context, index) => horizontalSpace(20),
          itemCount: paymentMethodsIcons.length),
    );
  }
}

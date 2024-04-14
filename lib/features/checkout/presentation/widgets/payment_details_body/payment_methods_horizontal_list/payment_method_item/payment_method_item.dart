import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_app/core/themes/colors_manager.dart';
import 'package:payment_app/features/checkout/presentation/widgets/payment_details_body/payment_methods_horizontal_list/payment_method_item/payment_method_item_icon.dart';

class PaymentMethodItem extends StatelessWidget {
  final String paymentMethodIconAsset;
  const PaymentMethodItem({super.key, required this.paymentMethodIconAsset});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 103.w,
      height: 62.h,
      decoration: ShapeDecoration(
        color: ColorsManager.whiteColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: ColorsManager.secondaryColor, width: 1.5.w),
          borderRadius: BorderRadius.circular(15.r),
        ),
        shadows: const [
          BoxShadow(
            color: ColorsManager.secondaryColor,
            blurRadius: 4,
            spreadRadius: 0,
            offset: Offset(0, 0),
          )
        ],
      ),
      child:
          PaymentMethodItemIcon(paymentMethodIconAsset: paymentMethodIconAsset),
    );
  }
}

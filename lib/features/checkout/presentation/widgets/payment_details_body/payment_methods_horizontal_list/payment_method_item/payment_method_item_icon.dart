import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodItemIcon extends StatelessWidget {
  final String paymentMethodIconAsset;
  const PaymentMethodItemIcon(
      {super.key, required this.paymentMethodIconAsset});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset(
        paymentMethodIconAsset,
        height: 24.h,
      ),
    );
  }
}

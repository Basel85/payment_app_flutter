import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_app/core/themes/colors_manager.dart';
import 'package:payment_app/core/themes/text_styles_manager.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Function() onTap;
  const CustomButton({super.key, required this.buttonText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 95.w, vertical: 15.h),
          decoration: BoxDecoration(
            color: ColorsManager.secondaryColor,
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: Text(
            buttonText,
            textAlign: TextAlign.center,
            style: TextStylesManager.fontSize22FontWeight500ColorBlack,
          )),
    );
  }
}

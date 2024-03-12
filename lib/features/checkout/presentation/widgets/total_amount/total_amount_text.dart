import 'package:flutter/material.dart';
import 'package:payment_app/core/themes/text_styles_manager.dart';

class TotalAmountText extends StatelessWidget {
  final String text;
  const TotalAmountText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStylesManager.fontSize24FontWeight600ColorBlack,
    );
  }
}

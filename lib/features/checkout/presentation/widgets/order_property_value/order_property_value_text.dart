import 'package:flutter/material.dart';
import 'package:payment_app/core/themes/text_styles_manager.dart';

class OrderPropertyValueText extends StatelessWidget {
  final String text;
  const OrderPropertyValueText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStylesManager.fontSize18FontWeight400ColorBlack,
    );
  }
}

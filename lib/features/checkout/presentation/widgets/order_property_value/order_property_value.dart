import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/widgets/order_property_value/order_property_value_text.dart';
import 'package:payment_app/generated/l10n.dart';

class OrderPropertyValue extends StatelessWidget {
  final String orderProperty;
  final num orderPropertyPrice;
  const OrderPropertyValue(
      {super.key,
      required this.orderProperty,
      required this.orderPropertyPrice});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OrderPropertyValueText(text: orderProperty),
        const Spacer(),
        OrderPropertyValueText(
            text: S.of(context).amount(orderPropertyPrice.toDouble())),
      ],
    );
  }
}

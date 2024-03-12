import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/widgets/total_amount/total_amount_text.dart';
import 'package:payment_app/generated/l10n.dart';

class TotalAmount extends StatelessWidget {
  final num totalAmount;
  const TotalAmount({super.key, required this.totalAmount});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const TotalAmountText(text: 'Total'),
        const Spacer(),
        TotalAmountText(text: S.of(context).amount(totalAmount.toDouble())),
      ],
    );
  }
}

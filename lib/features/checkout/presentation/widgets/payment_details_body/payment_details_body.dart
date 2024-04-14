import 'package:flutter/material.dart';
import 'package:payment_app/core/helpers/spacing.dart';
import 'package:payment_app/features/checkout/presentation/widgets/payment_details_body/payment_methods_horizontal_list/payment_methods_horizontal_list.dart';

class PaymentDetailsBody extends StatelessWidget {
  const PaymentDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [verticalSpace(25), const PaymentMethodHorizontalList()],
    );
  }
}

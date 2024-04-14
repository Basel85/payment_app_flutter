import 'package:flutter/material.dart';
import 'package:payment_app/core/widgets/custom_appbar.dart';
import 'package:payment_app/features/checkout/presentation/widgets/payment_details_body/payment_details_body.dart';

class PaymentDetailsScreen extends StatelessWidget {
  const PaymentDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Payment Details'),
      body: PaymentDetailsBody()
    );
  }
}
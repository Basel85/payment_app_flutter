import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_app/core/constants/constants.dart';
import 'package:payment_app/core/helpers/spacing.dart';
import 'package:payment_app/features/checkout/presentation/cubits/payment_method_activation/payment_method_activation_cubit.dart';
import 'package:payment_app/features/checkout/presentation/cubits/payment_method_activation/payment_method_activation_states.dart';
import 'package:payment_app/features/checkout/presentation/widgets/payment_details_body/payment_methods_horizontal_list/payment_method_item/payment_method_item.dart';

class PaymentMethodHorizontalList extends StatelessWidget {
  const PaymentMethodHorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62.h,
      child: BlocProvider(
        create: (context) => PaymentMethodActivationCubit(),
        child: BlocBuilder<PaymentMethodActivationCubit,
            PaymentMethodActivationState>(
          builder: (contextBuilder, state) => ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              itemBuilder: (context, index) => PaymentMethodItem(
                    paymentMethodIconAsset: paymentMethodsIcons[index],
                    index: index,
                    isActivated: state is PaymentMethodActivationChanged
                        ? state.index == index
                        : index == 0
                            ? true
                            : false,
                  ),
              separatorBuilder: (context, index) => horizontalSpace(20),
              itemCount: paymentMethodsIcons.length),
        ),
      ),
    );
  }
}

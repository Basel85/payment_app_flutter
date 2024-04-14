import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/features/checkout/presentation/cubits/payment_method_activation/payment_method_activation_states.dart';

class PaymentMethodActivationCubit extends Cubit<PaymentMethodActivationState> {
  PaymentMethodActivationCubit() : super(PaymentMethodActivationInitial());
  static PaymentMethodActivationCubit of(context) => BlocProvider.of(context);
  void selectPaymentMethod(int index) {
    emit(PaymentMethodActivationChanged(index: index));
  }
}

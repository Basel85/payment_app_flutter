abstract class PaymentMethodActivationState {}

class PaymentMethodActivationInitial extends PaymentMethodActivationState {}

class PaymentMethodActivationChanged extends PaymentMethodActivationState {
  final int index;

  PaymentMethodActivationChanged({required this.index});
}

part of 'payment_verify_bloc.dart';

@freezed
class PaymentVerifyEvent with _$PaymentVerifyEvent {
  const factory PaymentVerifyEvent.paymentVerifyEventCalled(PaymentVerifyParams params) = _PaymentVerifyEventCalled;
}

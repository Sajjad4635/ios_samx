part of 'payment_verify_bloc.dart';

@freezed
class PaymentVerifyState with _$PaymentVerifyState {
  const factory PaymentVerifyState.initial() = _PaymentVerifyStateInitial ;
  const factory PaymentVerifyState.loading() =  PaymentVerifyStateLoading ;
  const factory PaymentVerifyState.loadSuccess(PaymentVerifyResponseEntities entities) = _PaymentVerifyStateLoadSuccess ;
  const factory PaymentVerifyState.loadFailure(Failure failure) = _PaymentVerifyStateLoadFailure ;
}

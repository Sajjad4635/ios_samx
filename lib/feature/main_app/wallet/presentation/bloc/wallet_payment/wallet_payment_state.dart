part of 'wallet_payment_bloc.dart';

@freezed
class WalletPaymentState with _$WalletPaymentState {
  const factory WalletPaymentState.initial() = _WalletPaymentStateInitial;
  const factory WalletPaymentState.loading() = WalletPaymentStateLoading;
  const factory WalletPaymentState.loadSuccess(WalletPaymentResponseEntities walletPaymentResponseEntities) =
  _WalletPaymentStateLoadSuccess;
  const factory WalletPaymentState.loadFailure(Failure failure) = _WalletPaymentStateLoadFailure;
}

part of 'wallet_payment_bloc.dart';

@freezed
class WalletPaymentEvent with _$WalletPaymentEvent {
  const factory WalletPaymentEvent.walletPaymentEventCalled(WalletPaymentParams param) = _walletPaymentEventCalled;
}

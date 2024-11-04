part of 'wallet_withdraw_bloc.dart';

@freezed
class WalletWithdrawEvent with _$WalletWithdrawEvent {
  const factory WalletWithdrawEvent.walletWithdrawEventCalled(WalletWithDrawParams params) = _WalletWithdrawEventCalled;
}

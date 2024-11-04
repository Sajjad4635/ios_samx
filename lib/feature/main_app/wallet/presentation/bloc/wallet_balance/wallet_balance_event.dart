part of 'wallet_balance_bloc.dart';

@freezed
class WalletBalanceEvent with _$WalletBalanceEvent {
  const factory WalletBalanceEvent.walletBalanceEventCalled(WalletBalanceParams params) = _WalletBalanceEventCalled;
}

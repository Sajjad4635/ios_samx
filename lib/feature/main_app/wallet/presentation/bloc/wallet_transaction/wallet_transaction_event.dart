part of 'wallet_transaction_bloc.dart';

@freezed
class WalletTransactionEvent with _$WalletTransactionEvent {
  const factory WalletTransactionEvent.walletTransactionEventCalled(WalletTransactionParams params) = _WalletTransactionEventCalled;
}
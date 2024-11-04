part of 'wallet_to_wallet_bloc.dart';

@freezed
class WalletToWalletEvent with _$WalletToWalletEvent {
  const factory WalletToWalletEvent.walletToWalletEventCalled(
      WalletToWalletParams params) = _walletToWalletEventCalled;
}

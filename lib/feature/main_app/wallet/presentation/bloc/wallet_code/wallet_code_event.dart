part of 'wallet_code_bloc.dart';


@freezed
class WalletCodeEvent with _$WalletCodeEvent {
  const factory WalletCodeEvent.walletCodeEventCalled(WalletCodeParams param) = _WalletCodeEventCalled;
}
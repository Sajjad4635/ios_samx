part of 'create_wallet_bloc.dart';

@freezed 
class CreateWalletEvent with _$CreateWalletEvent {
  const factory CreateWalletEvent.createWalletEventCalled(CreateWalletParam param) = _CreateWalletEventCalled;
}
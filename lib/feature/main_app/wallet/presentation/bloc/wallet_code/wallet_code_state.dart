part of 'wallet_code_bloc.dart';

@freezed
class WalletCodeState with _$WalletCodeState {
  const factory WalletCodeState.initial() = _WalletCodeState;

  const factory WalletCodeState.loading() = WalletCodeStateLoading;

  const factory WalletCodeState.loadSuccess(WalletCodeEntities walletCodeEntities) = _WalletCodeStateLoadSuccess;

  const factory WalletCodeState.loadFailure(Failure failure) = _WalletCodeStateLoadFailure;
}

part of 'create_wallet_bloc.dart';

@freezed 
class CreateWalletState with _$CreateWalletState {
  const factory CreateWalletState.initial() = _CreateWalletStateInitial;
  const factory CreateWalletState.loading() = CreateWalletStateLoading;
  const factory CreateWalletState.loadSuccess(CreateWalletEntities createWalletEntities) =_CreateWalletStateLoadSuccess;
  const factory CreateWalletState.loadFailure(Failure failure) = _CreateWalletStateLoadFailure;
}
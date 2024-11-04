
part of 'wallet_to_wallet_bloc.dart';


@freezed
class WalletToWalletState with _$WalletToWalletState{
  const factory WalletToWalletState.initial() = _WalletToWalletStateInitial ;
  const factory WalletToWalletState.loading() =  WalletToWalletStateLoading ;
  const factory WalletToWalletState.loadSuccess(WalletToWalletResponseEntities entities) = _WalletToWalletStateLoadSuccess ;
  const factory WalletToWalletState.loadFailure(Failure failure ) = _WalletToWalletStateLoadFailure ;


}
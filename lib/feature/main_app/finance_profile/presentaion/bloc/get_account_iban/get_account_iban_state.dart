part of 'get_account_iban_bloc.dart';

@freezed
class GetAccountIbanState with _$GetAccountIbanState {
  const factory GetAccountIbanState.initial() = _GetAccountIbanStateInitial ;
  const factory GetAccountIbanState.loadFailure(Failure failure ) = _GetAccountIbanStateLoadFailure;
  const factory GetAccountIbanState.loading() = GetAccountIbanStateLoading ;
  const factory GetAccountIbanState.loadSuccess (GetAccountIbanEntities getAccountIbanEntities ) = _GetAccountIbanStateLoadSuccess ;

}




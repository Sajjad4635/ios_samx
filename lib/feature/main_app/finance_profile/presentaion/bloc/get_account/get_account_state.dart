part of 'get_account_bloc.dart';

@freezed
class GetAccountState with _$GetAccountState{
  const factory GetAccountState.initial() = _GetAccountStateInitial ;
  const factory GetAccountState.loadFailure(Failure failure ) = _GetAccountStateLoadFailure;
  const factory GetAccountState.loading() = GetAccountStateLoading ;
  const factory GetAccountState.loadSuccess (GetAccountEntities getAccountEntities ) = _GetAccountStateLoadSuccess ;


}


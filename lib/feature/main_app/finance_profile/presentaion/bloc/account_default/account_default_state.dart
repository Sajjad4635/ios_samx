part of 'account_default_bloc.dart';

@freezed
class AccountDefaultState with _$AccountDefaultState {
  const factory AccountDefaultState.initial() = _AccountDefaultStateInitial ;
  const factory AccountDefaultState.loadFailure(Failure failure ) = _AccountDefaultStateLoadFailure;
  const factory AccountDefaultState.loading() = AccountDefaultStateLoading ;
  const factory AccountDefaultState.loadSuccess (AccountDefaultEntities accountDefaultEntities ) = _AccountDefaultStateLoadSuccess ;
}




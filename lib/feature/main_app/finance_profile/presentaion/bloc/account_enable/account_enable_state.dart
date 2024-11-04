part of 'account_enable_bloc.dart';
@freezed
class AccountEnableState with _$AccountEnableState {
  const factory AccountEnableState.initial() = _AccountEnableStateInitial ;
  const factory AccountEnableState.loadFailure(Failure failure ) = _AccountEnableStateLoadFailure;
  const factory AccountEnableState.loading() = AccountEnableStateLoading ;
  const factory AccountEnableState.loadSuccess (AccountEnableEntities accountEnableEntities ) = _AccountEnableStateLoadSuccess ;
}
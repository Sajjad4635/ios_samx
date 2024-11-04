part of 'create_withdraw_unit_linked_bloc.dart';

@freezed
class CreateWithdrawState with _$CreateWithdrawState {
  const factory CreateWithdrawState.initial() = _CreateWithdrawStateInitial;
  const factory CreateWithdrawState.loadFailure(Failure failure) = _CreateWithdrawStateLoadFailure;
  const factory CreateWithdrawState.loading() = CreateWithdrawStateLoading;
  const factory CreateWithdrawState.loadSuccess(CreateWithdrawUnitLinkedEntities createWithdrawUnitLinkedEntities) =
      _CreateWithdrawStateLoadSuccess;
}
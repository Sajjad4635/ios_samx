part of 'create_deposit_bloc.dart';

@freezed
class CreateDepositState with _$CreateDepositState {
  const factory CreateDepositState.initial() = _CreateDepositStateInitial;
  const factory CreateDepositState.loadFailure(Failure failure) = _CreateDepositStateLoadFailure;
  const factory CreateDepositState.loading() = CreateDepositStateLoading;
  const factory CreateDepositState.loadSuccess(CreateDepositResponseEntities createDepositResponseEntities) =
      _CreateDepositStateLoadSuccess;
}



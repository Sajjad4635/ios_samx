part of 'person_voucher_create_bloc.dart';

@freezed
class PersonVoucherCreateState with _$PersonVoucherCreateState {
  const factory PersonVoucherCreateState.initial() =
      _PersonVoucherCreateStateInitial;

  const factory PersonVoucherCreateState.loadFailure(Failure failure) =
      _PersonVoucherCreateStateLoadFailure;

  const factory PersonVoucherCreateState.loading() =
      PersonVoucherCreateStateLoading;

  const factory PersonVoucherCreateState.loadSuccess(
          PersonVoucherCreateEntities personVoucherCreateEntities) =
      _PersonVoucherCreateStateLoadSuccess;
}
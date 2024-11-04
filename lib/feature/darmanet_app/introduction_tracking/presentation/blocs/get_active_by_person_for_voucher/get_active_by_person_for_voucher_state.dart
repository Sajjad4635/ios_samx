part of 'get_active_by_person_for_voucher_bloc.dart';

@freezed
class GetActiveByPersonForVoucherState with _$GetActiveByPersonForVoucherState {
  const factory GetActiveByPersonForVoucherState.initial() = _GetActiveByPersonForVoucherStateInitial;
  const factory GetActiveByPersonForVoucherState.loadFailure(Failure failure) = _GetActiveByPersonForVoucherStateLoadFailure;
  const factory GetActiveByPersonForVoucherState.loading() = GetActiveByPersonForVoucherStateLoading;
  const factory GetActiveByPersonForVoucherState.loadSuccess(GetActiveByPersonForVoucherEntities getActiveByPersonForVoucherEntities) =
      _GetActiveByPersonForVoucherStateLoadSuccess;
}
part of 'get_last_voucher_number_bloc.dart';

@freezed
class GetLastVoucherNumberState with _$GetLastVoucherNumberState {
  const factory GetLastVoucherNumberState.initial() = _GetLastVoucherNumberStateInitial;
  const factory GetLastVoucherNumberState.loadFailure(Failure failure) = _GetLastVoucherNumberStateLoadFailure;
  const factory GetLastVoucherNumberState.loading() = GetLastVoucherNumberStateLoading;
  const factory GetLastVoucherNumberState.loadSuccess(GetLastVoucherNumberEntities getLastVoucherNumberEntities) =
      _GetLastVoucherNumberStateLoadSuccess;
}
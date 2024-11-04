part of 'voucher_request_get_by_id_bloc.dart';

@freezed
class VoucherRequestGetByIdState with _$VoucherRequestGetByIdState {
  const factory VoucherRequestGetByIdState.initial() = _VoucherRequestGetByIdStateInitial;
  const factory VoucherRequestGetByIdState.loadFailure(Failure failure) = _VoucherRequestGetByIdStateLoadFailure;
  const factory VoucherRequestGetByIdState.loading() = VoucherRequestGetByIdStateLoading;
  const factory VoucherRequestGetByIdState.loadSuccess(VoucherRequestGetByIdEntities voucherRequestGetByIdEntities) =
      _VoucherRequestGetByIdStateLoadSuccess;
}
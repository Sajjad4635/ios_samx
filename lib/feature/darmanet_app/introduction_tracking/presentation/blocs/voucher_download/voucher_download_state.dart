part of 'voucher_download_bloc.dart';

@freezed
class VoucherDownloadState with _$VoucherDownloadState {
  const factory VoucherDownloadState.initial() = _VoucherDownloadStateInitial;

  const factory VoucherDownloadState.loadFailure(Failure failure) =
      _VoucherDownloadStateLoadFailure;

  const factory VoucherDownloadState.loading() = VoucherDownloadStateLoading;

  const factory VoucherDownloadState.loadSuccess(
          VoucherDownloadEntities voucherDownloadEntities) =
      _VoucherDownloadStateLoadSuccess;
}
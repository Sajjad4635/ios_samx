part of 'voucher_download_bloc.dart';

@freezed
abstract class VoucherDownloadEvent with _$VoucherDownloadEvent {
  const factory VoucherDownloadEvent.voucherDownloadEvent(
      {required VoucherDownloadParam param}) = _VoucherDownloadEventCalled;
}

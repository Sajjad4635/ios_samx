part of 'voucher_report_bloc.dart';

@freezed
class VoucherReportState with _$VoucherReportState {
  const factory VoucherReportState.initial() = _VoucherReportStateInitial;

  const factory VoucherReportState.loadFailure(Failure failure) =
      _VoucherReportStateLoadFailure;

  const factory VoucherReportState.loading() = VoucherReportStateLoading;

  const factory VoucherReportState.loadSuccess(
          VoucherReportEntities voucherReportEntities) =
      _VoucherReportStateLoadSuccess;
}
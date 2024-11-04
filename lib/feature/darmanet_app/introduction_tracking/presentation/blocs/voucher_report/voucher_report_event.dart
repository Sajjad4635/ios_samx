part of 'voucher_report_bloc.dart';

@freezed
abstract class VoucherReportEvent with _$VoucherReportEvent {
  const factory VoucherReportEvent.voucherReportEvent(
      {required VoucherReportParam param}) = _VoucherReportEventCalled;
}
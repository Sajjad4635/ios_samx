part of 'voucher_request_get_by_id_bloc.dart';

@freezed
abstract class VoucherRequestGetByIdEvent with _$VoucherRequestGetByIdEvent {
  const factory VoucherRequestGetByIdEvent.voucherRequestGetByIdEventCalled({required VoucherRequestGetByIdParam param}) =
      _VoucherRequestGetByIdEventCalled;
}
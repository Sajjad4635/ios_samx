part of 'person_voucher_request_list_bloc.dart';

@freezed
abstract class PersonVoucherRequestListEvent with _$PersonVoucherRequestListEvent {
  const factory PersonVoucherRequestListEvent.personVoucherRequestListEventCalled({required PersonVoucherRequestListParam param}) =
      _PersonVoucherRequestListEventCalled;
}
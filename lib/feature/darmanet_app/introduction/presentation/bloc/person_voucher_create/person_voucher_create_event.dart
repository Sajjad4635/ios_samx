part of 'person_voucher_create_bloc.dart';

@freezed
abstract class PersonVoucherCreateEvent with _$PersonVoucherCreateEvent {
  const factory PersonVoucherCreateEvent.personVoucherCreateEventCalled(
          {required PersonVoucherCreateParam param}) =
      _PersonVoucherCreateEventCalled;
}
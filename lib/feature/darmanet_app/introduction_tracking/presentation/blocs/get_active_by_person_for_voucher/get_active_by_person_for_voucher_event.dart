part of 'get_active_by_person_for_voucher_bloc.dart';

@freezed
abstract class GetActiveByPersonForVoucherEvent with _$GetActiveByPersonForVoucherEvent {
  const factory GetActiveByPersonForVoucherEvent.getActiveByPersonForVoucherEvent({required GetActiveByPersonForVoucherParam param}) =
      _GetActiveByPersonForVoucherEventCalled;
}
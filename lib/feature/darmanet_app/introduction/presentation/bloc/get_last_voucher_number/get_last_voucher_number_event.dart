part of 'get_last_voucher_number_bloc.dart';

@freezed
abstract class GetLastVoucherNumberEvent with _$GetLastVoucherNumberEvent {
  const factory GetLastVoucherNumberEvent.getLastVoucherNumberEventCalled({required NoParams noParams}) =
      _GetLastVoucherNumberEventCalled;
}
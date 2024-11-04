part of 'iban_inquiry_bloc.dart';

@freezed
abstract class IbanInquiryEvent with _$IbanInquiryEvent {
  const factory IbanInquiryEvent.ibanInquiryEventCalled(IbanInquiryParam param) = _IbanInquiryEventCalled;
}

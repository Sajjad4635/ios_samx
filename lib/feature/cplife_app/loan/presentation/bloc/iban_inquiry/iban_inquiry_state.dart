part of 'iban_inquiry_bloc.dart';

@freezed
class IbanInquiryState with _$IbanInquiryState {
  const factory IbanInquiryState.initial() = _IbanInquiryStateInitial;
  const factory IbanInquiryState.loadFailure(Failure failure) = _IbanInquiryStateLoadFailure;
  const factory IbanInquiryState.loading() = IbanInquiryStateLoading;
  const factory IbanInquiryState.loadSuccess(IbanInquiryResponseEntities ibanInquiryResponseEntities) =
      _IbanInquiryLoadSuccess;
}

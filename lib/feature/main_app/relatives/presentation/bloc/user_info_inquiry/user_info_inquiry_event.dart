part of 'user_info_inquiry_bloc.dart';

@freezed
abstract class UserInfoInquiryEvent with _$UserInfoInquiryEvent {
  const factory UserInfoInquiryEvent.userInfoInquiryEventCalled({required UserInfoInquiryParam userInfoInquiryParam}) = _UserInfoInquiryEventCalled;
}
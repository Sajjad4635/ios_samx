

part of 'user_info_inquiry_bloc.dart';


@freezed
class UserInfoInquiryState with _$UserInfoInquiryState {
  const factory UserInfoInquiryState.initial() = _UserInfoInquiryStateInitial ;
  const factory UserInfoInquiryState.loadFailure(Failure failure ) = _UserInfoInquiryStateLoadFailure;
  const factory UserInfoInquiryState.loading() = UserInfoInquiryStateLoading ;
  const factory UserInfoInquiryState.loadSuccess (UserInfoEntities userInfoEntities ) = _UserInfoInquiryStateLoadSuccess ;
}


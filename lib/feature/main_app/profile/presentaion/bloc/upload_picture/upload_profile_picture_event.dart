part of 'upload_profile_picture_bloc.dart';

@freezed
class UploadProfilePictureEvent with _$UploadProfilePictureEvent {
  const factory UploadProfilePictureEvent.uploadPictureEventCalled(  UploadProfilePictureParams uploadProfilePictureParams ) = _UploadProfilePictureEventCalled;
}

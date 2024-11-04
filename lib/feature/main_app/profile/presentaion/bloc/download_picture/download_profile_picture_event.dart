part of 'download_profile_picture_bloc.dart';

@freezed
class DownloadProfilePictureEvent with _$DownloadProfilePictureEvent {
  const factory DownloadProfilePictureEvent.profilePictureCalled({required DownloadProfilePictureParam param}) = _ProfilePictureEventCalled;
}

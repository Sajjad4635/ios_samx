part of 'download_profile_picture_bloc.dart';

@freezed
class DownloadProfilePictureState with _$DownloadProfilePictureState {
  const factory DownloadProfilePictureState.initial() = _DownloadProfilePictureStateInitial;
  const factory DownloadProfilePictureState.loadFailure(Failure failure) = _DownloadProfilePictureStateLoadFailure;
  const factory DownloadProfilePictureState.loading() = DownloadProfilePictureStateLoading;
  const factory DownloadProfilePictureState.loadSuccess(DownloadProfilePictureEntity profilePictureEntity) = _DownloadProfilePictureStateLoadSuccess;
}

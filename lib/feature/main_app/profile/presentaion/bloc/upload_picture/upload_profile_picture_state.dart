part of 'upload_profile_picture_bloc.dart';

@freezed
class UploadProfilePictureState with _$UploadProfilePictureState {
  const factory UploadProfilePictureState.initial() =     _UploadProfilePictureStateInitial;
  const factory UploadProfilePictureState.loadFailure(Failure failure) = _UploadProfilePictureStateLoadFailure;
  const factory UploadProfilePictureState.loading() =      UploadProfilePictureStateLoading;
  const factory UploadProfilePictureState.loadSuccess(UploadProfilePictureEntity uploadProfileProfilePictureEntity) = _UploadPictureStateLoadSuccess;
}

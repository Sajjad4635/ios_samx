part of 'upload_bloc.dart';

@freezed
class UploadState with _$UploadState {
  const factory UploadState.initial() = _UploadStateInitial;
  const factory UploadState.loadFailure(Failure failure) = _UploadStateLoadFailure;
  const factory UploadState.loading() = UploadStateLoading;
  const factory UploadState.loadSuccess(UploadEntities uploadEntities) =
      _UploadStateLoadSuccess;
}
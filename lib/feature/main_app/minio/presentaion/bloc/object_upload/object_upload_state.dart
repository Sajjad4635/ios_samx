part of 'object_upload_bloc.dart';

@freezed
class ObjectUploadState with _$ObjectUploadState {
  const factory ObjectUploadState.initial() = _ObjectUploadStateInitial;
  const factory ObjectUploadState.loadFailure(Failure failure) =_ObjectUploadStateLoadFailure;
  const factory ObjectUploadState.loading() = ObjectUploadStateLoading;
  const factory ObjectUploadState.loadSuccess(ObjectUploadEntities objectUploadEntities) = _ObjectUploadStateLoadSuccess;
}
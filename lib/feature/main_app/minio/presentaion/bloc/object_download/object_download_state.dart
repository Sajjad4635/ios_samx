
part of 'object_download_bloc.dart';
@freezed

class ObjectDownloadBlocState  with _$ObjectDownloadBlocState{
  const factory ObjectDownloadBlocState.initial() = _ObjectDownloadBlocStateInitial;
  const factory ObjectDownloadBlocState.loadFailure(Failure failure) =_ObjectDownloadBlocStateLoadFailure;
  const factory ObjectDownloadBlocState.loading() = ObjectDownloadBlocStateLoading;
  const factory ObjectDownloadBlocState.loadSuccess(ObjectDownloadEntities objectDownloadEntities) = _GetBucketStateLoadSuccess;

}

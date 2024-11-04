
part of 'object_download_bloc.dart';

@freezed

class ObjectDownloadBlocEvent with _$ObjectDownloadBlocEvent {
  const factory ObjectDownloadBlocEvent.objectDownloadEventCalled(ObjectDownloadParam objectDownloadParam) = _ObjectDownloadBlocEventCalled;
}
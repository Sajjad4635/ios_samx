part of 'object_upload_bloc.dart';

@freezed

abstract class ObjectUploadEvent with _$ObjectUploadEvent {
  const factory ObjectUploadEvent.objectUploadEventCalled( ObjectUploadParam objectUploadParam) = _ObjectUploadEventCalled;

}
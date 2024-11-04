part of 'upload_bloc.dart';

@freezed
abstract class UploadEvent with _$UploadEvent {
  const factory UploadEvent.uploadEventCalled({required UploadParam param}) =
      _UploadEventCalled;
}
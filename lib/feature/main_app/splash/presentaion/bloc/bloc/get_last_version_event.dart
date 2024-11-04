part of 'get_last_version_bloc.dart';

@freezed
class GetLastVersionEvent with _$GetLastVersionEvent {
  const factory GetLastVersionEvent.getLastVersionEventCalled({required GetLastVersionParam param}) = _GetLastVersionEventCalled;
}
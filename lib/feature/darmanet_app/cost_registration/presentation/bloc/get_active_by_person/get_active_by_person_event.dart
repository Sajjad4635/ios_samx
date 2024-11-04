part of 'get_active_by_person_bloc.dart';

@freezed
abstract class GetActiveByPersonEvent with _$GetActiveByPersonEvent {
  const factory GetActiveByPersonEvent.getActiveByPersonEventCalled({required GetActiveByPersonParam param}) =
      _GetActiveByPersonEventCalled;
}

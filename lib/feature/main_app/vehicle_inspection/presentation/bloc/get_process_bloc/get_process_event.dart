part of 'get_process_bloc.dart';

@freezed
abstract class GetProcessEvent with _$GetProcessEvent {
  const factory GetProcessEvent.getProcessEventCalled({required GetProcessParam getProcessParam}) = _GetProcessEventCalled ;

}

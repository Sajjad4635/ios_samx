part of 'get_agents_list_bloc.dart';

@freezed
class GetAgentsListEvent with _$GetAgentsListEvent {
  const factory GetAgentsListEvent.getAgentListEventCalled(
  {required GetAgentsListParams params}) = _GetAgentsListEventCalled;
}

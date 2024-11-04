part of 'get_states_agents_branches_bloc.dart';

@freezed
class GetStatesAgentsBranchesEvent with _$GetStatesAgentsBranchesEvent {
  const factory GetStatesAgentsBranchesEvent.getStatesAgentsBranchesEventCalled(
      {required GetStatesAgentsBranchesParams params}) = _GetStatesAgentsBranchesEventCalled;
}

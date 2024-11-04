part of 'get_cities_agents_branches_bloc.dart';

@freezed
class GetCitiesAgentsBranchesEvent with _$GetCitiesAgentsBranchesEvent {
  const factory GetCitiesAgentsBranchesEvent.getCitiesAgentsBranchesEventCalled(
      {required GetCitiesAgentsBranchesParams params}) = _GetCitiesAgentsBranchesEventCalled;

}

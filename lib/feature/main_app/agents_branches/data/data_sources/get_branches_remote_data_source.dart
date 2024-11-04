import '../../domain/entities/get_agents/get_agents_list_entity.dart';
import '../../domain/entities/get_cities_agents_branches/get_cities_agents_branches_entity.dart';
import '../../domain/entities/get_states_agents_branches/get_states_agents_branches.dart';
import '../../domain/use_cases/get_agents_list/params/get_agents_list_params.dart';
import '../../domain/use_cases/get_cities/params/get_cities_agents_branches_params.dart';
import '../../domain/use_cases/get_states/params/get_states_agents_branches_params.dart';

abstract class GetAgentsBranchesRemoteDataSource {
  Future<GetStatesAgentsBranchesEntity> getStates(GetStatesAgentsBranchesParams params);
  Future<GetCitiesAgentsBranchesEntity> getCities(GetCitiesAgentsBranchesParams params);
  Future<GetAgentsListEntity> getAgentsList(GetAgentsListParams params);
}

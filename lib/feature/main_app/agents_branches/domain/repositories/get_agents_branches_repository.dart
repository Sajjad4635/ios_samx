import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/agents_branches/domain/entities/get_agents/get_agents_list_entity.dart';
import 'package:ios_samx/feature/main_app/agents_branches/domain/entities/get_states_agents_branches/get_states_agents_branches.dart';

import 'package:either_dart/either.dart';

import '../entities/get_cities_agents_branches/get_cities_agents_branches_entity.dart';
import '../use_cases/get_agents_list/params/get_agents_list_params.dart';
import '../use_cases/get_cities/params/get_cities_agents_branches_params.dart';
import '../use_cases/get_states/params/get_states_agents_branches_params.dart';

abstract class GetAgentsListRepository {
  Future<Either<Failure, GetStatesAgentsBranchesEntity>>  getStates({required GetStatesAgentsBranchesParams params});
  Future<Either<Failure, GetCitiesAgentsBranchesEntity>>  getCities({required GetCitiesAgentsBranchesParams params});
  Future<Either<Failure, GetAgentsListEntity>>  getAgentsList({required GetAgentsListParams params});
}
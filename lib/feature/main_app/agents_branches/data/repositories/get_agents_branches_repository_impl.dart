import 'package:ios_samx/core/errors/exceptions/server_exception.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/errors/failures/server_failure.dart';
import 'package:ios_samx/feature/main_app/agents_branches/data/data_sources/get_branches_remote_data_source.dart';
import 'package:ios_samx/feature/main_app/agents_branches/domain/entities/get_agents/get_agents_list_entity.dart';
import 'package:ios_samx/feature/main_app/agents_branches/domain/entities/get_cities_agents_branches/get_cities_agents_branches_entity.dart';
import 'package:ios_samx/feature/main_app/agents_branches/domain/entities/get_states_agents_branches/get_states_agents_branches.dart';
import 'package:ios_samx/feature/main_app/agents_branches/domain/use_cases/get_agents_list/params/get_agents_list_params.dart';
import 'package:ios_samx/feature/main_app/agents_branches/domain/use_cases/get_cities/params/get_cities_agents_branches_params.dart';
import 'package:either_dart/src/either.dart';

import 'package:injectable/injectable.dart';
import '../../domain/repositories/get_agents_branches_repository.dart';
import '../../domain/use_cases/get_states/params/get_states_agents_branches_params.dart';

@LazySingleton(as: GetAgentsListRepository)
class GetAgentsBranchesRepositoryImpl implements GetAgentsListRepository {

  final GetAgentsBranchesRemoteDataSource remoteDataSource ;
  GetAgentsBranchesRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, GetCitiesAgentsBranchesEntity>> getCities(
      {required GetCitiesAgentsBranchesParams params}) async{

    try{
      final GetCitiesAgentsBranchesEntity getCities = await remoteDataSource.getCities(params);
      return Right(getCities);

    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, GetStatesAgentsBranchesEntity>> getStates({required GetStatesAgentsBranchesParams params}) async {

    try{
      final GetStatesAgentsBranchesEntity getStates = await remoteDataSource.getStates(params);
      return Right(getStates);

    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, GetAgentsListEntity>> getAgentsList({required GetAgentsListParams params}) async{
    try{
      final GetAgentsListEntity agentsListEntity = await remoteDataSource.getAgentsList(params);
      return Right(agentsListEntity);

    }on ServerException{
      return Left(ServerFailure());
    }
  }



}

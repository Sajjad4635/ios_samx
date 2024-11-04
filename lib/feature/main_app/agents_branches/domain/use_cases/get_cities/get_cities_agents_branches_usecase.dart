import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/agents_branches/domain/entities/get_cities_agents_branches/get_cities_agents_branches_entity.dart';
import 'package:ios_samx/feature/main_app/agents_branches/domain/repositories/get_agents_branches_repository.dart';
import 'package:ios_samx/feature/main_app/agents_branches/domain/use_cases/get_cities/params/get_cities_agents_branches_params.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCitiesAgentsBranchesUseCase extends UseCase<GetCitiesAgentsBranchesEntity, GetCitiesAgentsBranchesParams> {
  GetAgentsListRepository repository;
  GetCitiesAgentsBranchesUseCase({required this.repository});

  @override
  Future<Either<Failure, GetCitiesAgentsBranchesEntity>> call(GetCitiesAgentsBranchesParams params) async {
    return await repository.getCities(params: params);
  }
}

import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/agents_branches/domain/entities/get_states_agents_branches/get_states_agents_branches.dart';
import 'package:ios_samx/feature/main_app/agents_branches/domain/repositories/get_agents_branches_repository.dart';
import 'package:ios_samx/feature/main_app/agents_branches/domain/use_cases/get_states/params/get_states_agents_branches_params.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetStatesAgentsBranchesUseCase extends UseCase<GetStatesAgentsBranchesEntity, GetStatesAgentsBranchesParams> {
  GetAgentsListRepository repository ;

  GetStatesAgentsBranchesUseCase({required this.repository});

  @override
  Future<Either<Failure, GetStatesAgentsBranchesEntity>> call(GetStatesAgentsBranchesParams params)  async{

    return await repository.getStates(params: params);
  }
}

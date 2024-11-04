import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/agents_branches/domain/entities/get_agents/get_agents_list_entity.dart';
import 'package:ios_samx/feature/main_app/agents_branches/domain/repositories/get_agents_branches_repository.dart';
import 'package:ios_samx/feature/main_app/agents_branches/domain/use_cases/get_agents_list/params/get_agents_list_params.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAgentsListUseCase extends UseCase<GetAgentsListEntity, GetAgentsListParams>{

  GetAgentsListRepository repository ;

  GetAgentsListUseCase({required this.repository});

  @override
  Future<Either<Failure, GetAgentsListEntity>> call(GetAgentsListParams params) async{

    return await repository.getAgentsList(params: params);
  }

}
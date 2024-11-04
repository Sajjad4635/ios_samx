import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/create_cost/create_cost_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/repository/cost_registration_repository.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/create_cost/param/create_cost_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import 'package:single_import_generator/single_import_generator.dart';

@SingleImport()
@injectable
class CreateCostUseCase implements UseCase<CreateCostEntities, CreateCostParam> {
  final CostRegistrationRepository costRegistrationRepository;

  const CreateCostUseCase({required this.costRegistrationRepository});

  @override
  Future<Either<Failure, CreateCostEntities>> call(CreateCostParam params) async {
    return await costRegistrationRepository.createCost(param: params);
  }
}

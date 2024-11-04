import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/get_all_cost_desc/get_all_cost_desc_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/repository/cost_registration_repository.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/get_all_cost_desc/param/get_all_cost_desc_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAllCostDescUsecase
    implements UseCase<GetAllCostDescEntities, GetAllCostDescParam> {
  final CostRegistrationRepository costRegistrationRepository;

  GetAllCostDescUsecase({required this.costRegistrationRepository});

  @override
  Future<Either<Failure, GetAllCostDescEntities>> call(GetAllCostDescParam params) async {
    return await costRegistrationRepository.getAllCostDesc(param: params);
  }
}

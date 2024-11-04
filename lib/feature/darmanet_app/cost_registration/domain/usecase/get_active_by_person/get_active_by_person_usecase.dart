import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/repository/cost_registration_repository.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/get_active_by_person/param/get_active_by_person_param.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

import '../../entities/get_active_by_person/get_active_by_person_entities.dart';

@injectable
class GetActiveByPersonUsecase implements UseCase<GetActiveByPersonEntities, GetActiveByPersonParam> {
  final CostRegistrationRepository costRegistrationRepository;
  GetActiveByPersonUsecase({required this.costRegistrationRepository});

  @override
  Future<Either<Failure, GetActiveByPersonEntities>> call(GetActiveByPersonParam params) async {
    return await costRegistrationRepository.getActiveByPerson(param: params);
  }
}

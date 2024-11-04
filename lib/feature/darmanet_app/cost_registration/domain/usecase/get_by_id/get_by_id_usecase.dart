import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/get_by_id/get_by_id_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/repository/cost_registration_repository.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/get_by_id/param/get_by_id_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetByIdUsecase
    implements UseCase<GetByIdEntities, GetByIdParam> {
  final CostRegistrationRepository costRegistrationRepository;

  GetByIdUsecase({required this.costRegistrationRepository});

  @override
  Future<Either<Failure, GetByIdEntities>> call(GetByIdParam params) async {
    return await costRegistrationRepository.getById(param: params);
  }
}

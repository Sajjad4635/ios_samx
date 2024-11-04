import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/check_repetitive/check_repetitive_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/repository/cost_registration_repository.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/check_repetitive/param/check_repetitive_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class CheckRepetitiveUseCase implements UseCase<CheckRepetitiveEntities, CheckRepetitiveParam> {
  final CostRegistrationRepository costRegistrationRepository;
  CheckRepetitiveUseCase({required this.costRegistrationRepository});

  @override
  Future<Either<Failure, CheckRepetitiveEntities>> call(CheckRepetitiveParam params) async {
    return await costRegistrationRepository.checkRepetitive(param: params);
  }

}

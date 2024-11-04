import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/destory/param/destroy_param.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/usecases/usecase.dart';
import '../../repository/cost_registration_repository.dart';

@injectable
class DestroyUseCase implements UseCase<bool, DestroyParam> {
  final CostRegistrationRepository costRegistrationRepository;

  DestroyUseCase({required this.costRegistrationRepository});

  @override
  Future<Either<Failure, bool>> call(DestroyParam params) async {
    return await costRegistrationRepository.destroy(param: params);
  }
}

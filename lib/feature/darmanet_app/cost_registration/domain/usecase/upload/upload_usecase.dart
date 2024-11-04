import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/upload/upload_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/repository/cost_registration_repository.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/upload/param/upload_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/usecases/usecase.dart';

@injectable
class UploadUseCase implements UseCase<UploadEntities, UploadParam> {
  final CostRegistrationRepository costRegistrationRepository;

  UploadUseCase({required this.costRegistrationRepository});

  @override
  Future<Either<Failure, UploadEntities>> call(UploadParam params) async {
    return await costRegistrationRepository.uploadDocument(param: params);
  }
}

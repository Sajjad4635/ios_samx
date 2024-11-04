import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/upload_person_cost_image/upload_person_cost_image_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/repository/cost_registration_repository.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/upload_person_cost_image/param/upload_person_cost_image_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class UploadPersonCostImageUseCase implements UseCase<UploadPersonCostImageEntities, UploadPersonCostImageParam> {
  final CostRegistrationRepository costRegistrationRepository;

  UploadPersonCostImageUseCase({required this.costRegistrationRepository});

  @override
  Future<Either<Failure, UploadPersonCostImageEntities>> call(UploadPersonCostImageParam params) async {
    return await costRegistrationRepository.uploadPersonCostImage(param: params);
  }
}

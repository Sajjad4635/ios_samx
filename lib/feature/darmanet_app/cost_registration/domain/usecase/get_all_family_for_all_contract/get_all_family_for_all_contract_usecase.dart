import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/repository/cost_registration_repository.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/get_all_family_for_all_contract/param/get_all_family_for_all_contract_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../entities/get_all_family_for_all_contract/get_all_family_for_all_contract_entities.dart';

@injectable
class GetAllFamilyForAllContractUsecase
    implements UseCase<GetAllFamilyForAllContractEntities, GetAllFamilyForAllContractParam> {
  final CostRegistrationRepository costRegistrationRepository;

  GetAllFamilyForAllContractUsecase({required this.costRegistrationRepository});

  @override
  Future<Either<Failure, GetAllFamilyForAllContractEntities>> call(GetAllFamilyForAllContractParam params) async {
    return await costRegistrationRepository.getAllFamilyForAllContract(param: params);
  }
}

import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/darmanet_app/cost_tracking/domain/repository/cost_tracking_repository.dart';
import 'package:ios_samx/feature/darmanet_app/cost_tracking/domain/usecase/get_person_family_list/param/get_person_family_list_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../entities/get_person_family_list/get_person_family_list_entities.dart';

@injectable
class GetPersonFamilyListUseCase
    implements UseCase<GetPersonFamilyListEntities, GetPersonFamilyListParam> {
  final CostTrackingRepository costTrackingRepository;

  GetPersonFamilyListUseCase({required this.costTrackingRepository});

  @override
  Future<Either<Failure, GetPersonFamilyListEntities>> call(GetPersonFamilyListParam params) async{
    return await costTrackingRepository.getPersonFamilyList(param: params) ;
  }
}

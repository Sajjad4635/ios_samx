
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/darmanet_app/health_care_centers/domain/entities/clinic_search/get_clinic_search_result_entity.dart';
import 'package:ios_samx/feature/darmanet_app/health_care_centers/domain/repositories/get_clinic_search_result_repository.dart';
import 'package:ios_samx/feature/darmanet_app/health_care_centers/domain/use_cases/clinic_search/params/get_clinic_search_result_params.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetClinicSearchResultUseCase implements UseCase<GetClinicSearchResultEntity, GetClinicSearchResultParams>{

  final GetClinicSearchResultRepository repository ;

  GetClinicSearchResultUseCase({required this.repository});

  @override
  Future<Either<Failure, GetClinicSearchResultEntity>> call(GetClinicSearchResultParams params) async{

    return await repository.getClinicSearchResult(params: params);

  }

}
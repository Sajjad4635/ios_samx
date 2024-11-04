import 'package:ios_samx/feature/darmanet_app/health_care_centers/domain/entities/clinic_search/get_clinic_search_result_entity.dart';
import 'package:either_dart/either.dart';
import '../../../../../core/errors/failures/failure.dart';
import '../use_cases/clinic_search/params/get_clinic_search_result_params.dart';

abstract class GetClinicSearchResultRepository {
  Future<Either<Failure, GetClinicSearchResultEntity>> getClinicSearchResult({required GetClinicSearchResultParams params});
}
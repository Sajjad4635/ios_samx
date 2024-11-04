import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/darmanet_app/health_care_centers/domain/entities/clinics_types/get_all_clinics_entity.dart';
import 'package:either_dart/either.dart';
import '../use_cases/clinics_types/params/get_clinics_types_params.dart';


abstract class GetClinicsTypesRepository {

  Future<Either<Failure, GetClinicsTypesEntity>> getClinicsTypes({required GetClinicsTypesParams params});


}
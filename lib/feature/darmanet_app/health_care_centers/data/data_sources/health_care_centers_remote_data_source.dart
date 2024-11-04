import '../../domain/entities/clinic_search/get_clinic_search_result_entity.dart';
import '../../domain/entities/clinics_types/get_all_clinics_entity.dart';
import '../../domain/use_cases/clinic_search/params/get_clinic_search_result_params.dart';
import '../../domain/use_cases/clinics_types/params/get_clinics_types_params.dart';

abstract class HealthCareCEntersRemoteDataSource {
  Future<GetClinicSearchResultEntity> getClinicSearchResult({required GetClinicSearchResultParams params});
  Future<GetClinicsTypesEntity> getClinicsTypes({required GetClinicsTypesParams params});

}
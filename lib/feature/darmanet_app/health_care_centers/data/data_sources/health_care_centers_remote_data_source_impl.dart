import 'package:ios_samx/feature/darmanet_app/health_care_centers/domain/entities/clinic_search/get_clinic_search_result_entity.dart';

import 'package:ios_samx/feature/darmanet_app/health_care_centers/domain/entities/clinics_types/get_all_clinics_entity.dart';
import 'package:ios_samx/feature/darmanet_app/health_care_centers/domain/use_cases/clinic_search/params/get_clinic_search_result_params.dart';
import 'package:ios_samx/feature/darmanet_app/health_care_centers/domain/use_cases/clinics_types/params/get_clinics_types_params.dart';
import 'package:dio/dio.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/dio/dio_error.dart';
import 'health_care_centers_remote_data_source.dart';

@LazySingleton(as: HealthCareCEntersRemoteDataSource)
@injectable
class HealthcareCentersRemoteDataSourceImpl implements HealthCareCEntersRemoteDataSource {

  final Dio dio;

  HealthcareCentersRemoteDataSourceImpl({required this.dio});

  String baseUrl = FlavorConfig.instance.variables["darmanetURL"];

  @override
  Future<GetClinicsTypesEntity> getClinicsTypes(
      {required GetClinicsTypesParams params}) async {
    String url = "$baseUrl/Lookup/GetAll";
    try {
      final response = await dio.post(url, data: params.toJson());
      final GetClinicsTypesEntity entity =
      GetClinicsTypesEntity(data: response.data);
      return entity;
    } on DioError catch (ex) {
      throw handleDioError(ex);
    }
  }



  @override
  Future<GetClinicSearchResultEntity> getClinicSearchResult({required GetClinicSearchResultParams params}) async {
    String url = "$baseUrl/Clinic/List";
    try {
      final response = await dio.post(url, data: params.toJson());

      final GetClinicSearchResultEntity entity = GetClinicSearchResultEntity.fromJson(response.data);
      return entity;
    } on DioError catch (ex) {
      throw handleDioError(ex);
    }
  }

}
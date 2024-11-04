import 'package:ios_samx/feature/main_app/vehicle_inspection/data/data_source/vehicle_inspection_remote_datasource.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/entities/create_basic_expertise/create_basic_expertise_entities.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/entities/expertise_status/expertise_status_entities.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/entities/get_process/get_process_entites.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/entities/vehicle_inspection/vehicle_inspection_entities.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/usecase/create_basic_expertise/param/create_basic_expertise_param.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/usecase/expertise_status/param/expertise_status_param.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/usecase/get_process/param/get_process_param.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/usecase/other_vehicle_inspection/param/other_vehicle_inspection_param.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/usecase/vehicle_inspection/param/vehicle_inspection_param.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/dio/dio_error.dart';
import '../../../../../core/dio/dio_response_lenz.dart';

@LazySingleton(as: VehicleInspectionRemoteDatasource)
@injectable
class VehicleInspectionRemoteDatasourceImpl implements VehicleInspectionRemoteDatasource {
  final Dio dio;
  String baseUrl = "https://lenzapi.karmast.ir/api/v1/ChannelExpertise";
  String baseUrlIns = "https://lenzapi.karmast.ir";



  VehicleInspectionRemoteDatasourceImpl({required this.dio});

  @override
  Future<VehicleInspectionEntities> vehicleInspectionList(
      {required VehicleInspectionParam vehicleInspectionParam}) async {
    String url =
        "${baseUrl}/GetBasicInfoExpertiseByPhonenumber?Phonenumber=${vehicleInspectionParam
        .phoneNumber}&Token=${vehicleInspectionParam.token}";

    try {
      final response = await dio.get(url);
      DioResponseLenz dioResponseLenz = DioResponseLenz.fromJson(response.data);
      VehicleInspectionEntities vehicleInspectionEntities =
      VehicleInspectionEntities(dioResponseLenz);
      return vehicleInspectionEntities;
    } on DioException catch (ex) {
      throw handleDioError(ex);
    }
  }

  @override
  Future<bool> otherVehicleInspection({required OtherVehicleInspectionParam
  otherVehicleInspectionParam}) async {
    String url =
        "${baseUrlIns}/${otherVehicleInspectionParam
        .currentDate}/samix?Region=${otherVehicleInspectionParam
        .region}&segment1=${otherVehicleInspectionParam
        .segment1}&segment2=${otherVehicleInspectionParam
        .segment2}&fullname=${otherVehicleInspectionParam
        .fullName}&phonenumber=${otherVehicleInspectionParam
        .phonenumber}&token=${otherVehicleInspectionParam
        .token}&platealphabet=${otherVehicleInspectionParam.platealphabet}";

    print(url);
    try {
      final response = await dio.get(url);
      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  @override
  Future<GetProcessEntities> getProcess(
      {required GetProcessParam getProcessParam}) async {
    String url = "${baseUrl}/GetProcess?ChannelId=${getProcessParam
        .channelId}";

    try {
      final response = await dio.get(url);

      DioResponseLenz dioResponseLenz = DioResponseLenz.fromJson(response.data);
      GetProcessEntities getProcessEntities = GetProcessEntities(dioResponseLenz);

      return getProcessEntities;
    }on DioException catch (ex) {
      throw handleDioError(ex);
    }
  }

  @override
  Future<CreateBasicExpertiseEntities> createBasicExpertise({required CreateBasicExpertiseParam createBasicExpertiseParam}) async {
      String url = "${baseUrl}/CreateBasicExpertise";

      try{
        final Response response = await dio.post(url ,data : createBasicExpertiseParam.toJson()) ;
         final CreateBasicExpertiseEntities createBasicExpertiseEntities = CreateBasicExpertiseEntities (
           DioResponseLenz.fromJson(response.data));

        return createBasicExpertiseEntities ;
      }on DioException catch (ex) {
        throw handleDioError(ex);
      }
  }

  @override
  Future<ExpertiseStatusEntities> expertiseStatus({required ExpertiseStatusParam expertiseStatusParam}) async{
    String url = "${baseUrl}/Status?ChannelId=${expertiseStatusParam.channelId}&Token=${expertiseStatusParam.token}";

    try{
      final Response response = await dio.get(url) ;
      final ExpertiseStatusEntities expertiseStatusEntities = ExpertiseStatusEntities (
          DioResponseLenz.fromJson(response.data));

      return expertiseStatusEntities ;
    }on DioException catch (ex) {
      throw handleDioError(ex);
    }
  }
}

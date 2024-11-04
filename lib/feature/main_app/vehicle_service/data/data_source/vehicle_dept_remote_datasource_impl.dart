import 'package:ios_samx/feature/main_app/vehicle_service/data/data_source/vehicle_dept_remote_datasource.dart';
import 'package:ios_samx/feature/main_app/vehicle_service/domain/entities/vehicle_dept/vehicle_dept_entities.dart';
import 'package:ios_samx/feature/main_app/vehicle_service/domain/usecase/vehicle_dept/params/vehicle_dept_param.dart';
import 'package:dio/dio.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/dio/dio_error_cp.dart';
import '../../../../../core/dio/dio_response_cp.dart';


@LazySingleton(as: VehicleDeptRemoteDataSource)
@injectable

class VehicleDeptRemoteDataSourceImpl implements VehicleDeptRemoteDataSource {

  final Dio dio;
  String baseUrl = FlavorConfig.instance.variables["baseURL"];

  VehicleDeptRemoteDataSourceImpl({required this.dio});


  @override
  Future<VehicleDeptEntities> vehicleDept({required VehicleDeptParam vehicleDeptParam}) async {
    String url = "${baseUrl}Inquiry/toll/Freeway";

    try {
      final response = await dio.post(url , data: vehicleDeptParam.toJson());

      final VehicleDeptEntities vehicleDeptEntities = VehicleDeptEntities(
        DioResponseCPLife.fromJson(response.data),
      );
      return vehicleDeptEntities;
    } on DioError catch (ex) {
      throw handleDioErrorCP(ex);
    }

  }



}
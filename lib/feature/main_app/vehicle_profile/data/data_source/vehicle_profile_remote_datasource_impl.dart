import 'package:ios_samx/core/dio/dio_error_samx.dart';
import 'package:ios_samx/core/dio/dio_response_samx.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/data/data_source/vehicle_profile_remote_datasource.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/entities/delete_vehicle/delete_vehicle_entities.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/entities/edit_vehicle/edit_vehicle_entities.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/entities/post_vehicle/post_vehicle_entities.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/entities/vehicle/vehicle_entities.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/entities/vehicle_inquiry/vehicle_inquiry_entities.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/usecase/delete_vehicle/params/delete_vehicle_param.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/usecase/edit_vehicle/params/edit_vehicle_param.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/usecase/post_vehicle/params/post_vehicle_param.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/usecase/vehicle_inquiry/param/vehicle_inquiry_param.dart';
import 'package:dio/dio.dart';

import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:injectable/injectable.dart';


@LazySingleton(as: VehicleProfileRemoteDataSource)
@injectable
class VehicleProfileRemoteDataSourceImpl
    implements VehicleProfileRemoteDataSource {
  final Dio dio;
  String baseUrlSamx = FlavorConfig.instance.variables["samxUrl"];

  VehicleProfileRemoteDataSourceImpl({required this.dio});

  @override
  Future<VehicleEntities> vehicleList({required NoParams noParams}) async {
    String url = "$baseUrlSamx/users/me/vehicles";
    try {
      final response = await dio.get(url);

      final VehicleEntities vehicleEntities = VehicleEntities(
        DioResponseSamX.fromJson(response.data),
      );

      return vehicleEntities;
    } on DioException catch (ex) {
      throw handleDioErrorSamX(ex);
    }
  }

  @override
  Future<DeleteVehicleEntities> deleteVehicle(
      {required DeleteVehicleParam deleteVehicleParam}) async {
    String url = "$baseUrlSamx/users/me/vehicles/${deleteVehicleParam.vehicleId}";
    try {
      final response = await dio.delete(url);

      final DeleteVehicleEntities deleteVehicleEntities = DeleteVehicleEntities(
          dioResponseSamX: DioResponseSamX.fromJson(response.data));

      return deleteVehicleEntities;
    } on DioException catch (ex) {
      throw handleDioErrorSamX(ex);
    }
  }

  @override
  Future<PostVehicleEntities> postVehicle(
      {required PostVehicleParam postVehicleParam}) async {
    String url = "$baseUrlSamx/users/me/vehicles";

    try {
      final Response response =
          await dio.post(url, data: postVehicleParam.toJson());

      final PostVehicleEntities postVehicleEntities =
          PostVehicleEntities(DioResponseSamX.fromJson(response.data));

      return postVehicleEntities;
    } on DioException catch (ex) {
      throw handleDioErrorSamX(ex);
    }
  }

  @override
  Future<EditVehicleEntities> editVehicle(
      {required EditVehicleParam editVehicleParam}) async {
    String url = "$baseUrlSamx/users/me/vehicles/${editVehicleParam.vehicleId}";

    try {
      final response = await dio.put(url, data: editVehicleParam.toJson());

      final EditVehicleEntities editVehicleEntities = EditVehicleEntities(
          dioResponseSamX: DioResponseSamX.fromJson(response.data));

      return editVehicleEntities;
    } on DioException catch (ex) {
      throw handleDioErrorSamX(ex);
    }
  }

  @override
  Future<VehicleInquiryEntities> inquiryVehicle(
      {required VehicleInquiryParam vehicleInquiryParam}) async {
    String url = "$baseUrlSamx/users/me/vehicles/${vehicleInquiryParam.vehicleId}";

    try {
      final response = await dio.get(url);

      final VehicleInquiryEntities vehicleInquiryEntities =
          VehicleInquiryEntities(DioResponseSamX.fromJson(response.data));

      return vehicleInquiryEntities;
    } on DioException catch (ex) {
      throw handleDioErrorSamX(ex);
    }
  }
}

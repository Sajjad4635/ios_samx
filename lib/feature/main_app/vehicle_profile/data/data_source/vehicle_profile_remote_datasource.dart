import 'package:ios_samx/feature/main_app/vehicle_profile/domain/entities/edit_vehicle/edit_vehicle_entities.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/usecase/delete_vehicle/params/delete_vehicle_param.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/usecase/edit_vehicle/params/edit_vehicle_param.dart';
import '../../../../../core/usecases/usecase.dart';
import '../../domain/entities/delete_vehicle/delete_vehicle_entities.dart';
import '../../domain/entities/post_vehicle/post_vehicle_entities.dart';
import '../../domain/entities/vehicle/vehicle_entities.dart';
import '../../domain/entities/vehicle_inquiry/vehicle_inquiry_entities.dart';
import '../../domain/usecase/post_vehicle/params/post_vehicle_param.dart';
import '../../domain/usecase/vehicle_inquiry/param/vehicle_inquiry_param.dart';

abstract class VehicleProfileRemoteDataSource {
  Future<VehicleEntities> vehicleList({required NoParams noParams});
  Future<DeleteVehicleEntities> deleteVehicle ({required DeleteVehicleParam deleteVehicleParam});
  Future<PostVehicleEntities> postVehicle ({required PostVehicleParam postVehicleParam}) ;
  Future<EditVehicleEntities> editVehicle ({required EditVehicleParam editVehicleParam}) ;
  Future<VehicleInquiryEntities> inquiryVehicle ({required VehicleInquiryParam vehicleInquiryParam}) ;
}

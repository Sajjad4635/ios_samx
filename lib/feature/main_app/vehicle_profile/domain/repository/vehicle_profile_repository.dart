import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/entities/delete_vehicle/delete_vehicle_entities.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/usecase/delete_vehicle/params/delete_vehicle_param.dart';
import 'package:either_dart/either.dart';

import '../entities/edit_vehicle/edit_vehicle_entities.dart';
import '../entities/post_vehicle/post_vehicle_entities.dart';
import '../entities/vehicle/vehicle_entities.dart';
import '../entities/vehicle_inquiry/vehicle_inquiry_entities.dart';
import '../usecase/edit_vehicle/params/edit_vehicle_param.dart';
import '../usecase/post_vehicle/params/post_vehicle_param.dart';
import '../usecase/vehicle_inquiry/param/vehicle_inquiry_param.dart';

abstract class VehicleProfileRepository {
  Future<Either<Failure,VehicleEntities>> vehicleList({required NoParams noParams});
  Future<Either<Failure,DeleteVehicleEntities>> deleteVehicle ({required DeleteVehicleParam deleteVehicleParam}) ;
  Future<Either<Failure,PostVehicleEntities>> postVehicle ({required PostVehicleParam postVehicleParam}) ;
  Future<Either<Failure,EditVehicleEntities>> editVehicle ({required EditVehicleParam editVehicleParam}) ;
  Future<Either<Failure,VehicleInquiryEntities>> inquiryVehicle ({required VehicleInquiryParam vehicleInquiryParam}) ;

}
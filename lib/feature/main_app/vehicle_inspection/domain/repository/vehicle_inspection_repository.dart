import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:either_dart/either.dart';
import '../entities/vehicle_inspection/vehicle_inspection_entities.dart';
import '../usecase/vehicle_inspection/param/vehicle_inspection_param.dart';

abstract class VehicleInspectionRepository{
  Future<Either<Failure,VehicleInspectionEntities>> vehicleInspection({required VehicleInspectionParam vehicleInspectionParam}) ;
}

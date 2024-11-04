import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:either_dart/either.dart';
import '../usecase/other_vehicle_inspection/param/other_vehicle_inspection_param.dart';

abstract class OtherVehicleInspectionRepository {
  Future<Either<Failure, bool>>otherVehicleInspection({required OtherVehicleInspectionParam otherVehicleInspectionParam});


}

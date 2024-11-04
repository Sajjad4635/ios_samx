import 'package:ios_samx/feature/main_app/vehicle_service/domain/entities/vehicle_dept/vehicle_dept_entities.dart';
import 'package:either_dart/either.dart';

import '../../../../../core/errors/failures/failure.dart';
import '../usecase/vehicle_dept/params/vehicle_dept_param.dart';

abstract class VehicleDeptRepository {
  Future<Either<Failure,VehicleDeptEntities>> vehicleDept ({required VehicleDeptParam vehicleDeptParam});

}
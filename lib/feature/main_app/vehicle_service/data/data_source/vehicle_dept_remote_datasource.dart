import '../../domain/entities/vehicle_dept/vehicle_dept_entities.dart';
import '../../domain/usecase/vehicle_dept/params/vehicle_dept_param.dart';

abstract class VehicleDeptRemoteDataSource {
  Future<VehicleDeptEntities> vehicleDept ({required VehicleDeptParam vehicleDeptParam});

}
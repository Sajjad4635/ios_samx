import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/vehicle_service/domain/repository/vehicle_dept_repository.dart';
import 'package:ios_samx/feature/main_app/vehicle_service/domain/usecase/vehicle_dept/params/vehicle_dept_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../entities/vehicle_dept/vehicle_dept_entities.dart';

@injectable
class VehicleDeptUseCase implements UseCase<VehicleDeptEntities,VehicleDeptParam>{
  final VehicleDeptRepository vehicleDeptRepository ;

  VehicleDeptUseCase({required this.vehicleDeptRepository});


  @override
  Future<Either<Failure, VehicleDeptEntities>> call(VehicleDeptParam vehicleDeptParam)async {
    return await vehicleDeptRepository.vehicleDept(vehicleDeptParam: vehicleDeptParam);
  }




}
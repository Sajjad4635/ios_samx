import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/usecase/vehicle_inspection/param/vehicle_inspection_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../entities/vehicle_inspection/vehicle_inspection_entities.dart';
import '../../repository/vehicle_inspection_repository.dart';

@injectable
class VehicleInspectionUseCase implements UseCase<VehicleInspectionEntities,VehicleInspectionParam> {
  final VehicleInspectionRepository vehicleInspectionRepository ;

  VehicleInspectionUseCase({required this.vehicleInspectionRepository});

  @override
  Future<Either<Failure, VehicleInspectionEntities>> call(VehicleInspectionParam vehicleInspectionParam)async  {
    return await vehicleInspectionRepository.vehicleInspection(vehicleInspectionParam: vehicleInspectionParam) ;
  }


}
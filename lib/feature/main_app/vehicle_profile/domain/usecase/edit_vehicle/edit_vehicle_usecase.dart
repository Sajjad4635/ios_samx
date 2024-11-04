import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/usecase/edit_vehicle/params/edit_vehicle_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../core/usecases/usecase.dart';
import '../../entities/edit_vehicle/edit_vehicle_entities.dart';
import '../../repository/vehicle_profile_repository.dart';

@injectable

class EditVehicleUseCase implements UseCase<EditVehicleEntities ,EditVehicleParam> {
  final VehicleProfileRepository vehicleProfileRepository;

  EditVehicleUseCase({required this.vehicleProfileRepository});

  @override
  Future<Either<Failure, EditVehicleEntities>> call(EditVehicleParam editVehicleParam) async {
    return await vehicleProfileRepository.editVehicle(editVehicleParam: editVehicleParam);
  }
}
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/usecase/delete_vehicle/params/delete_vehicle_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/usecases/usecase.dart';
import '../../entities/delete_vehicle/delete_vehicle_entities.dart';
import '../../repository/vehicle_profile_repository.dart';

@injectable
class DeleteVehicleUseCase implements UseCase<DeleteVehicleEntities,DeleteVehicleParam> {
  final VehicleProfileRepository vehicleProfileRepository;

  DeleteVehicleUseCase({required this.vehicleProfileRepository});

  @override
  Future<Either<Failure, DeleteVehicleEntities>> call(DeleteVehicleParam deleteVehicleParam) async{
    return await vehicleProfileRepository.deleteVehicle(deleteVehicleParam: deleteVehicleParam);
  }





}
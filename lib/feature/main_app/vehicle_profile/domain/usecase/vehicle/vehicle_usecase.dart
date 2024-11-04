import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/usecases/usecase.dart';
import '../../entities/vehicle/vehicle_entities.dart';
import '../../repository/vehicle_profile_repository.dart';

@injectable
class VehicleUseCase implements UseCase<VehicleEntities, NoParams> {
  final VehicleProfileRepository vehicleProfileRepository;

  VehicleUseCase({required this.vehicleProfileRepository});

  @override
  Future<Either<Failure, VehicleEntities>> call(NoParams params) async {
    return await vehicleProfileRepository.vehicleList(noParams: params);
  }
}

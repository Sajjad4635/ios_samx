import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/repository/vehicle_profile_repository.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/usecase/post_vehicle/params/post_vehicle_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/usecases/usecase.dart';
import '../../entities/post_vehicle/post_vehicle_entities.dart';

@injectable
class PostVehicleUseCase implements UseCase<PostVehicleEntities, PostVehicleParam>{
  final VehicleProfileRepository vehicleProfileRepository;

  PostVehicleUseCase({required this.vehicleProfileRepository});

  @override
  Future<Either<Failure, PostVehicleEntities>> call( PostVehicleParam postVehicleParam) async{
    return await vehicleProfileRepository.postVehicle(postVehicleParam : postVehicleParam );
  }
}
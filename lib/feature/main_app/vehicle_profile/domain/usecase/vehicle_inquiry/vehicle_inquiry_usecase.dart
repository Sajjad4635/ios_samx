import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/usecase/vehicle_inquiry/param/vehicle_inquiry_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/usecases/usecase.dart';
import '../../entities/vehicle_inquiry/vehicle_inquiry_entities.dart';
import '../../repository/vehicle_profile_repository.dart';

@injectable
class VehicleInquiryUseCase implements UseCase<VehicleInquiryEntities,VehicleInquiryParam> {
  final VehicleProfileRepository vehicleProfileRepository;

  VehicleInquiryUseCase({required this.vehicleProfileRepository});

  @override
  Future<Either<Failure, VehicleInquiryEntities>> call(VehicleInquiryParam vehicleInquiryParam) async{
    return await vehicleProfileRepository.inquiryVehicle(vehicleInquiryParam: vehicleInquiryParam);
  }
}
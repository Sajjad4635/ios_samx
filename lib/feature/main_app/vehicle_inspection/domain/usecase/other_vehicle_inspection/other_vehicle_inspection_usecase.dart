import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/usecase/other_vehicle_inspection/param/other_vehicle_inspection_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import '../../repository/other_vehicle_inspection_repository.dart';

@injectable
class OtherVehicleInspectionUseCase implements UseCase <bool,OtherVehicleInspectionParam>{
  final OtherVehicleInspectionRepository otherVehicleInspectionRepository ;


  OtherVehicleInspectionUseCase({required this.otherVehicleInspectionRepository});

  @override
  Future<Either<Failure, bool>> call(OtherVehicleInspectionParam otherVehicleInspectionParam)  async {

    return await otherVehicleInspectionRepository.otherVehicleInspection(otherVehicleInspectionParam: otherVehicleInspectionParam);
  }
}

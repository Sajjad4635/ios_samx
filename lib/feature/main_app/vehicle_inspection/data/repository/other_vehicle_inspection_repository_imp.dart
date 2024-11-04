import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/usecase/other_vehicle_inspection/param/other_vehicle_inspection_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/errors/exceptions/server_exception.dart';
import '../../../../../core/errors/failures/server_failure.dart';
import '../../domain/repository/other_vehicle_inspection_repository.dart';
import '../data_source/vehicle_inspection_remote_datasource.dart';

@LazySingleton(as: OtherVehicleInspectionRepository)
class OtherVehicleInspectionRepositoryImpl implements OtherVehicleInspectionRepository {
  VehicleInspectionRemoteDatasource vehicleInspectionRemoteDatasource ;

  OtherVehicleInspectionRepositoryImpl({required this.vehicleInspectionRemoteDatasource}) ;

  @override
  Future<Either<Failure, bool>> otherVehicleInspection({required OtherVehicleInspectionParam otherVehicleInspectionParam}) async {
    try {
      await vehicleInspectionRemoteDatasource.otherVehicleInspection(otherVehicleInspectionParam: otherVehicleInspectionParam) ;
      return const Right(true);
    } on ServerException {
      return Left(ServerFailure());
    }
  }


}
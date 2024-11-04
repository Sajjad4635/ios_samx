import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/entities/vehicle_inspection/vehicle_inspection_entities.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/usecase/vehicle_inspection/param/vehicle_inspection_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/errors/exceptions/server_exception.dart';
import '../../../../../core/errors/failures/server_failure.dart';
import '../../domain/repository/vehicle_inspection_repository.dart';
import '../data_source/vehicle_inspection_remote_datasource.dart';

@LazySingleton(as: VehicleInspectionRepository)
class VehicleInspectionRepositoryImpl implements VehicleInspectionRepository {
  VehicleInspectionRemoteDatasource vehicleInspectionRemoteDatasource ;

  VehicleInspectionRepositoryImpl({required this.vehicleInspectionRemoteDatasource}) ;


  @override
  Future<Either<Failure, VehicleInspectionEntities>> vehicleInspection({required VehicleInspectionParam vehicleInspectionParam}) async {
    try{

      final VehicleInspectionEntities vehicleInspectionEntities = await vehicleInspectionRemoteDatasource.vehicleInspectionList(vehicleInspectionParam: vehicleInspectionParam) ;
      return Right(vehicleInspectionEntities);
    }on ServerException {
      return Left(ServerFailure());
    }
  }
}

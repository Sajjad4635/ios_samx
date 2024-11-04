
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/entities/get_process/get_process_entites.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/usecase/get_process/param/get_process_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/errors/exceptions/server_exception.dart';
import '../../../../../core/errors/failures/server_failure.dart';
import '../../domain/repository/get_process_repository.dart';
import '../data_source/vehicle_inspection_remote_datasource.dart';

@LazySingleton(as: GetProcessRepository)
class GetProcessRepositoryImpl implements  GetProcessRepository {

  VehicleInspectionRemoteDatasource vehicleInspectionRemoteDatasource ;
  GetProcessRepositoryImpl({required this.vehicleInspectionRemoteDatasource}) ;

  @override
  Future<Either<Failure, GetProcessEntities>> getProcess({required GetProcessParam getProcessParam}) async{

    try{
      final GetProcessEntities getProcessEntities = await vehicleInspectionRemoteDatasource.getProcess(getProcessParam: getProcessParam);
      return Right(getProcessEntities) ;
    }on ServerException {
      return Left(ServerFailure());
    }
  }
}
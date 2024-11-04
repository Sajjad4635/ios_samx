import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/vehicle_service/domain/entities/vehicle_dept/vehicle_dept_entities.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/errors/exceptions/server_exception.dart';
import '../../../../../core/errors/failures/server_failure.dart';
import '../../domain/repository/vehicle_dept_repository.dart';
import '../../domain/usecase/vehicle_dept/params/vehicle_dept_param.dart';
import '../data_source/vehicle_dept_remote_datasource.dart';


@LazySingleton(as: VehicleDeptRepository)
class VehicleDeptRepositoryImpl implements VehicleDeptRepository {

  VehicleDeptRemoteDataSource vehicleDeptRemoteDataSource ;
  VehicleDeptRepositoryImpl({required this.vehicleDeptRemoteDataSource}) ;

  @override
  Future<Either<Failure,VehicleDeptEntities>> vehicleDept({required VehicleDeptParam vehicleDeptParam}) async{
    try{
      final VehicleDeptEntities vehicleDeptEntities = await vehicleDeptRemoteDataSource.vehicleDept(vehicleDeptParam: vehicleDeptParam) ;
      return Right(vehicleDeptEntities);
    }
    on ServerException {
      return Left(ServerFailure());
    }
  }
}
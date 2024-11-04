

import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/entities/create_basic_expertise/create_basic_expertise_entities.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/usecase/create_basic_expertise/param/create_basic_expertise_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/errors/exceptions/server_exception.dart';
import '../../../../../core/errors/failures/server_failure.dart';
import '../../domain/repository/create_basic_expertise.dart';
import '../data_source/vehicle_inspection_remote_datasource.dart';

@LazySingleton(as : CreateBasicExpertiseRepository)
class CreateBasicExpertiseRepositoryImpl implements CreateBasicExpertiseRepository {

  VehicleInspectionRemoteDatasource vehicleInspectionRemoteDatasource ;
  CreateBasicExpertiseRepositoryImpl({required this.vehicleInspectionRemoteDatasource}) ;

  @override
  Future<Either<Failure, CreateBasicExpertiseEntities>> createBasicExpertise({required CreateBasicExpertiseParam createBasicExpertiseParam}) async {
    try {
        final CreateBasicExpertiseEntities createBasicExpertiseEntities = await vehicleInspectionRemoteDatasource.createBasicExpertise(createBasicExpertiseParam: createBasicExpertiseParam) ;
        return Right(createBasicExpertiseEntities) ;
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
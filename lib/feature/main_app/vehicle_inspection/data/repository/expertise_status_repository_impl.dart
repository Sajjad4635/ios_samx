import 'package:ios_samx/core/errors/failures/failure.dart';

import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/entities/expertise_status/expertise_status_entities.dart';

import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/usecase/expertise_status/param/expertise_status_param.dart';

import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/errors/exceptions/server_exception.dart';
import '../../../../../core/errors/failures/server_failure.dart';
import '../../domain/repository/expertise_status_repository.dart';
import '../data_source/vehicle_inspection_remote_datasource.dart';

@LazySingleton(as : ExpertiseStatusRepository)
class ExpertiseStatusRepositoryImpl implements ExpertiseStatusRepository {
  VehicleInspectionRemoteDatasource vehicleInspectionRemoteDatasource ;
  ExpertiseStatusRepositoryImpl({required this.vehicleInspectionRemoteDatasource}) ;

  @override
  Future<Either<Failure,ExpertiseStatusEntities>> expertiseStatus({required ExpertiseStatusParam expertiseStatusParam}) async{
    try {
      final ExpertiseStatusEntities expertiseStatusEntities = await vehicleInspectionRemoteDatasource.expertiseStatus(expertiseStatusParam: expertiseStatusParam) ;
      return Right(expertiseStatusEntities) ;
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
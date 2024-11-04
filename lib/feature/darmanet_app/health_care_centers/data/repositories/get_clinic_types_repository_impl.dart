import 'package:ios_samx/core/errors/exceptions/server_exception.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/errors/failures/server_failure.dart';
import 'package:ios_samx/feature/darmanet_app/health_care_centers/domain/entities/clinics_types/get_all_clinics_entity.dart';
import 'package:ios_samx/feature/darmanet_app/health_care_centers/domain/repositories/get_clinics_types_repository.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../domain/use_cases/clinics_types/params/get_clinics_types_params.dart';
import '../data_sources/health_care_centers_remote_data_source.dart';

@LazySingleton(as: GetClinicsTypesRepository)
class GetClinicsTypesRepositoryImpl implements GetClinicsTypesRepository {

  final HealthCareCEntersRemoteDataSource remoteDataSource;
  GetClinicsTypesRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, GetClinicsTypesEntity>> getClinicsTypes(
      {required GetClinicsTypesParams params}) async {
    try {
      final GetClinicsTypesEntity entity =
          await remoteDataSource.getClinicsTypes(params: params);
      return Right(entity);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}

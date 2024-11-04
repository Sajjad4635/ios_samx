
import 'package:ios_samx/core/errors/exceptions/server_exception.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/errors/failures/server_failure.dart';
import 'package:ios_samx/feature/darmanet_app/health_care_centers/domain/entities/clinic_search/get_clinic_search_result_entity.dart';
import 'package:ios_samx/feature/darmanet_app/health_care_centers/domain/use_cases/clinic_search/params/get_clinic_search_result_params.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import '../../domain/repositories/get_clinic_search_result_repository.dart';
import '../data_sources/health_care_centers_remote_data_source.dart';



@LazySingleton(as: GetClinicSearchResultRepository)
class GetClinicSearchResultRepositoryImpl implements GetClinicSearchResultRepository{

  final HealthCareCEntersRemoteDataSource remoteDataSource ;
  GetClinicSearchResultRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, GetClinicSearchResultEntity>> getClinicSearchResult({required GetClinicSearchResultParams params}) async{

    try{
      final GetClinicSearchResultEntity clinicSearchResultEntity  = await remoteDataSource.getClinicSearchResult(params: params);
      return Right(clinicSearchResultEntity);

    } on ServerException {
      return Left(ServerFailure());
    }


  }



}
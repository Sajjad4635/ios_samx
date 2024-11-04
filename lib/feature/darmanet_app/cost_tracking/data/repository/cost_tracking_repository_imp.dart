import 'package:ios_samx/core/errors/exceptions/server_exception.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/errors/failures/server_failure.dart';
import 'package:ios_samx/feature/darmanet_app/cost_tracking/data/data_source/cost_tracking_remote_data_source.dart';
import 'package:ios_samx/feature/darmanet_app/cost_tracking/domain/entities/get_person_family_list/get_person_family_list_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_tracking/domain/repository/cost_tracking_repository.dart';
import 'package:ios_samx/feature/darmanet_app/cost_tracking/domain/usecase/get_person_family_list/param/get_person_family_list_param.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CostTrackingRepository)
class CostTrackingRepositoryImp implements CostTrackingRepository {
  final CostTrackingRemoteDataSource costTrackingRemoteDataSource;

  CostTrackingRepositoryImp({required this.costTrackingRemoteDataSource});

  @override
  Future<Either<Failure, GetPersonFamilyListEntities>> getPersonFamilyList(
      {required GetPersonFamilyListParam param}) async {
    try {
      final GetPersonFamilyListEntities getPersonFamilyListEntities =
          await costTrackingRemoteDataSource.getPersonFamilyListEntities(
              param: param);
      return Right(getPersonFamilyListEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}

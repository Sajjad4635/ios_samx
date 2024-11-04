import 'package:ios_samx/core/errors/exceptions/server_exception.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/errors/failures/server_failure.dart';
import 'package:ios_samx/feature/main_app/splash/data/data_source/version_remote_data_source.dart';
import 'package:ios_samx/feature/main_app/splash/domain/entities/last_version/last_version_response_entity.dart';
import 'package:ios_samx/feature/main_app/splash/domain/repositories/version_repository.dart';
import 'package:ios_samx/feature/main_app/splash/domain/usecases/param/get_last_version/get_last_version_param.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: VersionRepository)
class VersionRepositoryImp extends VersionRepository {
  final VersionRemoteDataSource versionRemoteDataSource;

  VersionRepositoryImp({required this.versionRemoteDataSource});

  @override
  Future<Either<Failure, LastVersionResponseEntity>> getLastVersion(
      {required GetLastVersionParam param}) async {
    try {
      final lastVersionResponseEntity =
          await versionRemoteDataSource.getLastVersion(param: param);
      return Right(lastVersionResponseEntity);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}

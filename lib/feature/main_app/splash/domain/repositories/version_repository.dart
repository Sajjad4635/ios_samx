import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/splash/domain/entities/last_version/last_version_response_entity.dart';
import 'package:ios_samx/feature/main_app/splash/domain/usecases/param/get_last_version/get_last_version_param.dart';
import 'package:either_dart/either.dart';

abstract class VersionRepository{
  Future<Either<Failure,LastVersionResponseEntity>> getLastVersion({required GetLastVersionParam param});
}
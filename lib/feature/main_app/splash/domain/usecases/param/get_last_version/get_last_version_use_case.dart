import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/splash/domain/entities/last_version/last_version_response_entity.dart';
import 'package:ios_samx/feature/main_app/splash/domain/repositories/version_repository.dart';
import 'package:ios_samx/feature/main_app/splash/domain/usecases/param/get_last_version/get_last_version_param.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetLastVersionUseCase
    extends UseCase<LastVersionResponseEntity, GetLastVersionParam> {
  final VersionRepository versionRepository;

  GetLastVersionUseCase({required this.versionRepository});

  @override
  Future<Either<Failure, LastVersionResponseEntity>> call(
          GetLastVersionParam params) async =>
      await versionRepository.getLastVersion(param: params);
}

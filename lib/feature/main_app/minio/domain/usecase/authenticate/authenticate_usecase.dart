import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/minio/domain/entities/authenticate/authenticate_entities.dart';
import 'package:ios_samx/feature/main_app/minio/domain/repository/minio_repository.dart';
import 'package:ios_samx/feature/main_app/minio/domain/usecase/authenticate/param/authenticate_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthenticateUseCase
    implements UseCase<AuthenticateEntities, AuthenticateParam> {
  final MinioRepository minioRepository;

  AuthenticateUseCase({required this.minioRepository});

  @override
  Future<Either<Failure, AuthenticateEntities>> call(
      AuthenticateParam params) async {
    return await minioRepository.authenticate(authenticateParam: params);
  }
}

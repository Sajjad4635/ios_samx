import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/sso/domain/entities/login/login_entities.dart';
import 'package:ios_samx/feature/main_app/sso/domain/repository/sso_repository.dart';
import 'package:ios_samx/feature/main_app/sso/domain/usecase/login/params/login_params.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginUseCase implements UseCase<LoginEntities, LoginParams> {
  final SsoRepository ssoRepository;

  LoginUseCase({required this.ssoRepository});

  @override
  Future<Either<Failure, LoginEntities>> call(LoginParams params) async {
    return await ssoRepository.login(params: params);
  }
}

import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/sso/domain/entities/sign_up/sign_up_entities.dart';
import 'package:ios_samx/feature/main_app/sso/domain/repository/sso_repository.dart';
import 'package:ios_samx/feature/main_app/sso/domain/usecase/sign_up/params/sign_up_params.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignUpUseCase implements UseCase<SignUpEntities, SignUpParams> {
  final SsoRepository ssoRepository;
  SignUpUseCase({required this.ssoRepository});

  @override
  Future<Either<Failure, SignUpEntities>> call(SignUpParams params) async {
    return await ssoRepository.signUp(params: params);
  }
}

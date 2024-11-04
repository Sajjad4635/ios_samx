import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/sso/domain/entities/login_otp/login_otp_entities.dart';
import 'package:ios_samx/feature/main_app/sso/domain/repository/sso_repository.dart';
import 'package:ios_samx/feature/main_app/sso/domain/usecase/login_otp/params/login_otp_params.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginOtpUseCase implements UseCase<LoginOtpEntities, LoginOtpParams> {
  final SsoRepository ssoRepository;

  LoginOtpUseCase({required this.ssoRepository});

  @override
  Future<Either<Failure, LoginOtpEntities>> call(LoginOtpParams params) async {
    return await ssoRepository.loginOtp(params: params);
  }
}

import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/sso/domain/entities/sign_up_otp/sign_up_otp_entities.dart';
import 'package:ios_samx/feature/main_app/sso/domain/repository/sso_repository.dart';
import 'package:ios_samx/feature/main_app/sso/domain/usecase/sign_up_otp/params/sign_up_otp_params.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignUpOtpUseCase implements UseCase<SignUpOtpEntities, SignUpOtpParams> {
  final SsoRepository ssoRepository;
  SignUpOtpUseCase({required this.ssoRepository});

  @override
  Future<Either<Failure, SignUpOtpEntities>> call(SignUpOtpParams params) async {
    return await ssoRepository.signUpOtp(params: params);
  }
}

import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/sso/domain/entities/get_profile_activation/get_profile_activation_entities.dart';
import 'package:ios_samx/feature/main_app/sso/domain/entities/login/login_entities.dart';
import 'package:ios_samx/feature/main_app/sso/domain/entities/login_otp/login_otp_entities.dart';
import 'package:ios_samx/feature/main_app/sso/domain/entities/sign_up/sign_up_entities.dart';
import 'package:ios_samx/feature/main_app/sso/domain/entities/sign_up_otp/sign_up_otp_entities.dart';
import 'package:ios_samx/feature/main_app/sso/domain/usecase/login/params/login_params.dart';
import 'package:ios_samx/feature/main_app/sso/domain/usecase/login_otp/params/login_otp_params.dart';
import 'package:ios_samx/feature/main_app/sso/domain/usecase/profile_activation/param/get_profile_activation_param.dart';
import 'package:ios_samx/feature/main_app/sso/domain/usecase/sign_up/params/sign_up_params.dart';
import 'package:ios_samx/feature/main_app/sso/domain/usecase/sign_up_otp/params/sign_up_otp_params.dart';
import 'package:either_dart/either.dart';


abstract class SsoRepository {
  Future<Either<Failure, LoginEntities>> login({required LoginParams params});

  Future<Either<Failure, LoginOtpEntities>> loginOtp(
      {required LoginOtpParams params});

  Future<Either<Failure, SignUpEntities>> signUp(
      {required SignUpParams params});

  Future<Either<Failure, GetProfileActivationEntities>> getProfileActivation(
      {required GetProfileActivationParam param});

  Future<Either<Failure, SignUpOtpEntities>> signUpOtp(
      {required SignUpOtpParams params});
}

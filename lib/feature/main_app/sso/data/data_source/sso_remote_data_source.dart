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

abstract class SsoRemoteDataSource {
  Future<LoginEntities> login({required LoginParams params});
  Future<LoginOtpEntities> loginOtp({required LoginOtpParams params});
  Future<SignUpEntities> signUp({required SignUpParams params});
  Future<SignUpOtpEntities> signUpOtp({required SignUpOtpParams params});
  Future<GetProfileActivationEntities> getProfileActivation({required GetProfileActivationParam param}) ;
}


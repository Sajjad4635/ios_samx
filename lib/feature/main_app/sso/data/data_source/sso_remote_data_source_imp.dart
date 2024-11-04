import 'package:ios_samx/core/constant/strings.dart';
import 'package:ios_samx/core/dio/dio_error_samx.dart';
import 'package:ios_samx/core/dio/dio_response_samx.dart';
import 'package:ios_samx/feature/main_app/sso/data/data_source/sso_remote_data_source.dart';
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

import 'package:dio/dio.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SsoRemoteDataSource)
@injectable
class SsoRemoteDataSourceImpl implements SsoRemoteDataSource {
  final Dio dio;
  String baseUrlSamx = FlavorConfig.instance.variables["samxUrl"];

  SsoRemoteDataSourceImpl({required this.dio});

  @override
  Future<LoginEntities> login({required LoginParams params}) async {
    String url = "$baseUrlSamx/users/profile/signin";

    try {
      final Response response = await dio.post(url, data: params.toJson());
      final DioResponseSamX dioResponseSamX = DioResponseSamX.fromJson(response.data);
      final LoginEntities loginEntities = LoginEntities(dioResponseSamX);
      return loginEntities;
    } on DioException catch (e) {
      throw handleDioErrorSamX(e);
    }
  }

  @override
  Future<LoginOtpEntities> loginOtp({required LoginOtpParams params}) async {
    String url = "$baseUrlSamx/users/Profile/signin/otp";

    try {
      final Response response = await dio.post(url, data: params.toJson());
      final DioResponseSamX dioResponseSamX = DioResponseSamX.fromJson(response.data);
      final LoginOtpEntities loginOtpEntities = LoginOtpEntities(dioResponseSamX);
      return loginOtpEntities;
    } on DioException catch (e) {
      throw handleDioErrorSamX(e);
    }
  }

  @override
  Future<SignUpEntities> signUp({required SignUpParams params}) async {
    String url = "$baseUrlSamx/Identity/signup";

    try {
      final Response response = await dio.post(url, data: params.toJson());
      final DioResponseSamX dioResponseSamX = DioResponseSamX.fromJson(response.data);
      final SignUpEntities signUpEntities = SignUpEntities(dioResponseSamX);
      return signUpEntities;
    } on DioException catch (e) {
      throw handleDioErrorSamX(e);
    }
  }

  @override
  Future<SignUpOtpEntities> signUpOtp({required SignUpOtpParams params}) async {
    String url = "$baseUrlSamx/Identity/signup/otp";

    try {
      final Response response = await dio.post(url, data: params.toJson());
      final DioResponseSamX dioResponseSamX = DioResponseSamX.fromJson(response.data);
      final SignUpOtpEntities signUpOtpEntities = SignUpOtpEntities(dioResponseSamX);
      return signUpOtpEntities;
    } on DioException catch (e) {
      throw handleDioErrorSamX(e);
    }
  }

  @override
  Future<GetProfileActivationEntities> getProfileActivation({required GetProfileActivationParam param}) async {
    String url = "$baseUrlSamx/users/Profile/activation";
    final Box box = Hive.box(Strings.appDBName);
    String token = box.get(Strings.authorization);
    try {
      final response = await dio.post(
        url,
        options: Options(
          headers: {
            "Authorization": "Bearer $token",
            'Content-Type': 'application/json',
            'Access-Control-Allow-Headers': 'multipart/form-data',
          },
        ),
        data: param,
      );

      final GetProfileActivationEntities getProfileActivationEntities =
          GetProfileActivationEntities(DioResponseSamX.fromJson(response.data));

      return getProfileActivationEntities;
    } on DioException catch (e) {
      throw handleDioErrorSamX(e);
    }
  }
}

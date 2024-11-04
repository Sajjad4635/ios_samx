import 'package:ios_samx/core/dio/dio_response_samx.dart';
import 'package:ios_samx/feature/main_app/sso/domain/entities/login_otp/login_otp_response_data/login_otp_response_data.dart';
import 'package:equatable/equatable.dart';

class LoginOtpEntities extends Equatable {
  final DioResponseSamX dioResponseSamX;
  late final LoginOtpResponseData loginOtpResponseData;

  LoginOtpEntities(this.dioResponseSamX) {
    loginOtpResponseData = LoginOtpResponseData.fromJson(dioResponseSamX.data!);
  }

  @override
  List<Object?> get props => [loginOtpResponseData];
}

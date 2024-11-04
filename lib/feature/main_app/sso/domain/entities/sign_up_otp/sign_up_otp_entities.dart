import 'package:ios_samx/core/dio/dio_response_samx.dart';
import 'package:ios_samx/feature/main_app/sso/domain/entities/sign_up_otp/sign_up_otp_response_data/sign_up_otp_response_data.dart';
import 'package:equatable/equatable.dart';

class SignUpOtpEntities extends Equatable {
  final DioResponseSamX dioResponseCPLife;
  late final SignUpOtpResponseData signUpOtpResponseData;

  SignUpOtpEntities(this.dioResponseCPLife) {
    signUpOtpResponseData = SignUpOtpResponseData.fromJson(dioResponseCPLife.data!);
  }

  @override
  List<Object?> get props => [signUpOtpResponseData];
}

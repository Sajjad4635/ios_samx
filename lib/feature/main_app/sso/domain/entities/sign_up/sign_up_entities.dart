import 'package:ios_samx/core/dio/dio_response_samx.dart';
import 'package:ios_samx/feature/main_app/sso/domain/entities/sign_up/sign_up_response_data/sign_up_response_data.dart';
import 'package:equatable/equatable.dart';


class SignUpEntities extends Equatable {
  final DioResponseSamX dioResponseCPLife;
  late final SignUpResponseData signUpResponseData;

  SignUpEntities(this.dioResponseCPLife) {
    signUpResponseData = SignUpResponseData.fromJson(dioResponseCPLife.data!);
  }

  @override
  List<Object?> get props => [signUpResponseData];
}

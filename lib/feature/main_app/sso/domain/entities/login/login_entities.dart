import 'package:ios_samx/core/dio/dio_response_samx.dart';
import 'package:ios_samx/feature/main_app/sso/domain/entities/login/response_data/login_response_data.dart';
import 'package:equatable/equatable.dart';


class LoginEntities extends Equatable {
  final DioResponseSamX dioResponseSamX;
  late final LoginResponseData loginResponseData;

  LoginEntities(this.dioResponseSamX) {
    loginResponseData = LoginResponseData.fromJson(dioResponseSamX.data!);
  }

  @override
  List<Object?> get props => [loginResponseData];
}

import 'package:ios_samx/feature/main_app/relatives/domain/entities/user_info/user_info_response_data/user_info_response_data.dart';
import 'package:equatable/equatable.dart';

import '../../../../../../core/dio/dio_response_cp.dart';



class UserInfoEntities extends Equatable {
  final DioResponseCPLife dioResponseCPLife;
  late final UserInfoResponseData userInfoResponseData;

  UserInfoEntities(this.dioResponseCPLife) {
    userInfoResponseData = UserInfoResponseData.fromJson(dioResponseCPLife.data);
  }

  @override
  List<Object?> get props => [dioResponseCPLife, userInfoResponseData];
}

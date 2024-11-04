import 'package:equatable/equatable.dart';
import 'package:ios_samx/feature/otrs_app/domain/entity/login/ticketing_login_response_data/ticketing_login_response_data.dart';
import '../../../../../core/dio/dio_response.dart';

class TicketingLoginResponseEntity extends Equatable {
  final DioResponse dioResponse;
  late final TicketingLoginResponseData loginResponseData;

  TicketingLoginResponseEntity(this.dioResponse) {
    loginResponseData = TicketingLoginResponseData.fromJson(dioResponse.data!);
  }

  @override
  List<Object?> get props => [loginResponseData];
}

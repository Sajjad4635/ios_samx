import 'package:equatable/equatable.dart';
import 'package:ios_samx/feature/otrs_app/domain/entity/confirm/ticketing_confirm_response_data/ticketing_confirm_response_data.dart';

import '../../../../../core/dio/dio_response.dart';

class TicketingConfirmResponseEntity extends Equatable {
  final DioResponse dioResponse;
  late final TicketingConfirmResponseData confirmResponseData;

  TicketingConfirmResponseEntity(this.dioResponse) {
    confirmResponseData = TicketingConfirmResponseData.fromJson(dioResponse.data);
  }

  @override
  List<Object?> get props => [confirmResponseData];
}

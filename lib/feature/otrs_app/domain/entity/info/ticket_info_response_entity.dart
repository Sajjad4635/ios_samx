import 'package:equatable/equatable.dart';
import 'package:ios_samx/feature/otrs_app/domain/entity/info/ticket_info_response_data/ticketing_info_response_data.dart';

import '../../../../../core/dio/dio_response.dart';

class TicketingInfoResponseEntity extends Equatable {
  final DioResponse dioResponse;
  late final TicketingInfoResponseData listResponseData;

  TicketingInfoResponseEntity(this.dioResponse) {
    listResponseData = TicketingInfoResponseData.fromJson(dioResponse.data);
  }

  @override
  List<Object?> get props => [listResponseData];
}

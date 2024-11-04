import 'package:equatable/equatable.dart';
import 'package:ios_samx/feature/otrs_app/domain/entity/list/ticket_list_response_data/ticketing_list_response_data.dart';

import '../../../../../core/dio/dio_response.dart';

class TicketListResponseEntity extends Equatable {
  final DioResponse dioResponse;
  late final TicketingListResponseData listResponseData;

  TicketListResponseEntity(this.dioResponse) {
    listResponseData = TicketingListResponseData.fromJson(dioResponse.data!);
  }

  @override
  List<Object?> get props => [listResponseData];
}

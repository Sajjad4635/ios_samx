import 'package:equatable/equatable.dart';
import 'package:ios_samx/feature/otrs_app/domain/entity/search/ticketing_search_response_data/ticketing_search_response_data.dart';

import '../../../../../core/dio/dio_response.dart';

class TicketingSearchResponseEntity extends Equatable {
  final DioResponse dioResponse;
  late final TicketingSearchResponseData searchResponseData;

  TicketingSearchResponseEntity(this.dioResponse) {
    print(dioResponse.data.runtimeType);

    if (dioResponse.data != {}) {
      searchResponseData = TicketingSearchResponseData.fromJson(dioResponse.data);
    } else {
      searchResponseData = const TicketingSearchResponseData(ticketID: []);
    }
  }

  @override
  List<Object?> get props => [searchResponseData];
}

import 'package:equatable/equatable.dart';
import 'package:ios_samx/core/dio/dio_response_cp.dart';

import 'details_ticket_response_data/details_ticket_response_data.dart';

class DetailsTicketEntities extends Equatable {
  final DioResponseCPLife dioResponseCPLife;
  late final DetailsTicketResponseData detailsTicketResponseData;

  DetailsTicketEntities(this.dioResponseCPLife) {
    detailsTicketResponseData = DetailsTicketResponseData.fromJson(dioResponseCPLife.data);
  }

  @override
  List<Object?> get props => [];
}

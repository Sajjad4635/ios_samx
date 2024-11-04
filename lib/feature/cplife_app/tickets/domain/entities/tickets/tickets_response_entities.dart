import 'package:ios_samx/core/dio/dio_response_unitlinked.dart';
import 'package:ios_samx/feature/cplife_app/tickets/domain/entities/tickets/tickets_response_data/items/items.dart';
import 'package:equatable/equatable.dart';

class TicketsResponseEntities extends Equatable {
  final DioResponseUnitLinked dioResponseUnitlink;
  late final List<TicketResponseDataItems> items;

  TicketsResponseEntities(this.dioResponseUnitlink) {
    items = (dioResponseUnitlink.data as List<dynamic>)
        .map((item) =>
            TicketResponseDataItems.fromJson(item as Map<String, dynamic>))
        .toList();
  }

  @override
  List<Object?> get props => [dioResponseUnitlink, items];
}

import 'package:ios_samx/feature/cplife_app/tickets/domain/entities/tickets/tickets_response_data/items/items.dart';
import 'package:ios_samx/feature/cplife_app/tickets/presentation/widgets/ticket_item.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class TicketsListLoading extends StatelessWidget {
  const TicketsListLoading({super.key});


  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: true,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 4,
        itemBuilder: (context, index) => const TicketItem(
          ticketResponseDataItem: TicketResponseDataItems(
            id: 'test',
            policyId: 1111,
            amount: 123123,
            dateTime: '2024-06-30T10:32:39.6407053',
            deliveryType: '',
            failedReason: '',
            lasRequestId: '',
            state: '',
          ),
        ),
      ),
    );
  }
}

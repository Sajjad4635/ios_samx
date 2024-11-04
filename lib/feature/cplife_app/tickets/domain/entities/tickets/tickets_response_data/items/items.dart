import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'items.g.dart';

@JsonSerializable(createToJson: false)
class TicketResponseDataItems extends Equatable {
  final String id;
  final num amount;
  final String dateTime;
  final String state;
  final String? failedReason;
  final int policyId;
  final String deliveryType;
  final String? lasRequestId;

  const TicketResponseDataItems({
    required this.id,
    required this.amount,
    required this.dateTime,
    required this.state,
    required this.failedReason,
    required this.policyId,
    required this.deliveryType,
    required this.lasRequestId,
  });

  factory TicketResponseDataItems.fromJson(Map<String, dynamic> json) =>
      _$TicketResponseDataItemsFromJson(json);

  @override
  List<Object?> get props => [
        id,
        amount,
        dateTime,
        state,
        failedReason,
        policyId,
        deliveryType,
        lasRequestId,
      ];
}

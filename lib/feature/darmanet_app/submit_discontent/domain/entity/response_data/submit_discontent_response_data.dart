import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'submit_discontent_response_data.g.dart';

@JsonSerializable(createToJson: false)
class SubmitDiscontentResponseData extends Equatable{


  @JsonKey(name: 'TicketNumber')
  final String ticketNumber;


  const SubmitDiscontentResponseData({
    required this.ticketNumber,
  });

  factory SubmitDiscontentResponseData.fromJson(Map<String, dynamic> json) {
    return _$SubmitDiscontentResponseDataFromJson(json);
  }

  @override
  List<Object?> get props => [
    ticketNumber,
  ];

}
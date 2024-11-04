import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticketing_search_params.g.dart';

@JsonSerializable(createFactory: false)
class TicketingSearchParams extends Equatable {
  @JsonKey(name: 'SessionID')
  final String sessionId;
  

  const TicketingSearchParams(
      {required this.sessionId});

  @override
  List<Object?> get props => [sessionId];

  Map<String, dynamic> toJson() => _$TicketingSearchParamsToJson(this);
}

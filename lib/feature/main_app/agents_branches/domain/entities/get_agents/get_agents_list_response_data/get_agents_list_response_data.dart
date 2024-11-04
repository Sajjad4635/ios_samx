import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'agent_item_info/agent_item_info.dart';
part 'get_agents_list_response_data.g.dart';

@JsonSerializable(createToJson:  false)
class GetAgentsListResponseData extends Equatable{

  final int currentPage ;
  final int pageSize    ;
  final int totalPages    ;
  final int totalCount    ;
  final List<AgentItemInfo> items ;


  const GetAgentsListResponseData(
      this.currentPage,
      this.pageSize,
      this.totalPages,
      this.totalCount,
      this.items

      );

  @override
  List<Object?> get props => [
    currentPage,
    pageSize,
    totalPages,
    totalCount,
    items ,
  ];

  factory GetAgentsListResponseData.fromJson(Map<String, dynamic> json) => _$GetAgentsListResponseDataFromJson(json);

}
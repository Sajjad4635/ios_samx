import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_agents_list_params.g.dart';

@JsonSerializable(createFactory: false)
class GetAgentsListParams extends Equatable {
  final int stateCode;
  final int cityCode;
  final int page;
  final int pageSize;
  final String? searchType ;
  final String? query ;

  const GetAgentsListParams(
      {
        required this.stateCode,
        required this.cityCode,
        required this.page,
        required this.pageSize,
        this.searchType,
        this.query,

      } );

  @override
  List<Object?> get props => [
    stateCode,
    cityCode,
    page,
    pageSize,
    searchType,
    query,
  ];


  Map<String, dynamic> toJson() =>_$GetAgentsListParamsToJson(this);



}

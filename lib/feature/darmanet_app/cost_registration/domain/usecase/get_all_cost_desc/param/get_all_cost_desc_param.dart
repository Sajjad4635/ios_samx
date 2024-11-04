import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_all_cost_desc_param.g.dart';

@JsonSerializable()
class GetAllCostDescParam extends Equatable {
  @JsonKey(name: "SearchType")
  final int searchType;
  @JsonKey(name: "Limit")
  final int limit;
  @JsonKey(name: "Offset")
  final int offset;

  const GetAllCostDescParam({
    required this.searchType,
    required this.limit,
    required this.offset,
  });

  Map<String, dynamic> toJson() => _$GetAllCostDescParamToJson(this);

  @override
  List<Object?> get props => [
        searchType,
        limit,
        offset,
      ];
}

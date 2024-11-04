import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_cities_agents_branches_response_data.g.dart';

@JsonSerializable(createToJson: false)
class GetCitiesAgentsBranchesResponseData extends Equatable {
  final int cityCode;
  final String cityName;

  const GetCitiesAgentsBranchesResponseData(
      {required this.cityCode, required this.cityName});

  factory GetCitiesAgentsBranchesResponseData.fromJson(Map<String, dynamic> json) => _$GetCitiesAgentsBranchesResponseDataFromJson(json);

  @override
  List<Object?> get props => [cityCode, cityName];
}

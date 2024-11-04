import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_states_agents_branches_response_data.g.dart';

@JsonSerializable(createToJson: false)
class GetStatesAgentsBranchesResponseData extends Equatable {

  final int stateCode;
  final String stateName;

  const GetStatesAgentsBranchesResponseData(
      {required this.stateCode, required this.stateName});

  factory GetStatesAgentsBranchesResponseData.fromJson(
          Map<String, dynamic> json) =>
      _$GetStatesAgentsBranchesResponseDataFromJson(json);

  @override
  List<Object?> get props => [stateCode, stateName];
}

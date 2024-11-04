import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_states_agents_branches_params.g.dart';

@JsonSerializable(createFactory: false)
class GetStatesAgentsBranchesParams extends Equatable {

  final String partOfStateName ;

  const GetStatesAgentsBranchesParams({required this.partOfStateName});

  Map<String, dynamic> toJson() => _$GetStatesAgentsBranchesParamsToJson(this);

  @override
  List<Object?> get props =>  [partOfStateName];

}
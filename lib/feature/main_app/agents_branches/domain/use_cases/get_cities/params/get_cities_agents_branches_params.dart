import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_cities_agents_branches_params.g.dart';

@JsonSerializable(createFactory: false)
class GetCitiesAgentsBranchesParams extends Equatable{

  final String stateCode ;
  final String partOfCityName ;


  const GetCitiesAgentsBranchesParams({required this.stateCode, required this.partOfCityName});

  Map<String , dynamic> toJson() => _$GetCitiesAgentsBranchesParamsToJson(this);

  @override 
  List<Object?> get props =>  [stateCode, partOfCityName];
}

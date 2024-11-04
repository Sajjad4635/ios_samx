import 'package:ios_samx/core/dio/dio_response_cp.dart';
import 'package:equatable/equatable.dart';
import 'get_cities_response_data/get_cities_agents_branches_response_data.dart';

class GetCitiesAgentsBranchesEntity extends Equatable {
  final DioResponseCPLife dioResponseCPLife;
  late final List<GetCitiesAgentsBranchesResponseData> responseData = [];

  GetCitiesAgentsBranchesEntity(this.dioResponseCPLife) {
    for (var element in dioResponseCPLife.data) {
      responseData.add(GetCitiesAgentsBranchesResponseData.fromJson(element));
    }
  }

  @override
  List<Object?> get props => [
        dioResponseCPLife,
        responseData,
      ];
}

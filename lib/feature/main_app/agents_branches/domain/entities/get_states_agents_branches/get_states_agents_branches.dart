import 'package:ios_samx/core/dio/dio_response_cp.dart';
import 'package:equatable/equatable.dart';

import 'get_states_response_data/get_states_agents_branches_response_data.dart';

class GetStatesAgentsBranchesEntity extends Equatable {
  final DioResponseCPLife dioResponseCPLife;

  final List<GetStatesAgentsBranchesResponseData> responseData = [];

  GetStatesAgentsBranchesEntity(this.dioResponseCPLife) {
    for (var element in dioResponseCPLife.data) {
      responseData.add(GetStatesAgentsBranchesResponseData.fromJson(element));
    }
    print(responseData);

  }

  @override
  List<Object?> get props => [
        dioResponseCPLife,
        responseData,
      ];
}

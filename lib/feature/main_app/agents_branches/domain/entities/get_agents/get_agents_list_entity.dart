import 'package:ios_samx/core/dio/dio_response_cp.dart';
import 'package:ios_samx/feature/main_app/agents_branches/domain/entities/get_agents/get_agents_list_response_data/get_agents_list_response_data.dart';
import 'package:equatable/equatable.dart';

class GetAgentsListEntity extends Equatable{

  final DioResponseCPLife dioResponseCPLife ;
  late final GetAgentsListResponseData responseData ;


  GetAgentsListEntity(this.dioResponseCPLife){

    responseData =  GetAgentsListResponseData.fromJson(dioResponseCPLife.data);
  }

  @override
  List<Object?> get props =>  [dioResponseCPLife, responseData];

}
import 'package:ios_samx/feature/main_app/agents_branches/domain/entities/get_agents/get_agents_list_entity.dart';
import 'package:ios_samx/feature/main_app/agents_branches/domain/entities/get_cities_agents_branches/get_cities_agents_branches_entity.dart';
import 'package:ios_samx/feature/main_app/agents_branches/domain/entities/get_states_agents_branches/get_states_agents_branches.dart';
import 'package:ios_samx/feature/main_app/agents_branches/domain/use_cases/get_agents_list/params/get_agents_list_params.dart';
import 'package:ios_samx/feature/main_app/agents_branches/domain/use_cases/get_cities/params/get_cities_agents_branches_params.dart';
import 'package:ios_samx/feature/main_app/agents_branches/domain/use_cases/get_states/params/get_states_agents_branches_params.dart';
import 'package:dio/dio.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/dio/dio_error_cp.dart';
import '../../../../../core/dio/dio_response_cp.dart';
import 'get_branches_remote_data_source.dart';

@LazySingleton(as: GetAgentsBranchesRemoteDataSource)
@injectable
class GetAgentsBranchesRemoteDataSourceImpl implements GetAgentsBranchesRemoteDataSource {
  final Dio dio;

  GetAgentsBranchesRemoteDataSourceImpl({required this.dio});
  String baseUrl = FlavorConfig.instance.variables["baseURL"];

  @override
  Future<GetCitiesAgentsBranchesEntity> getCities(GetCitiesAgentsBranchesParams params) async {
    String url = "${baseUrl}Agents/State/${params.stateCode}/Cities?cityName=${params.partOfCityName}";

    try {
      final response = await dio.get(url);
      final GetCitiesAgentsBranchesEntity getCitiesAgentsBranchesEntity =
          GetCitiesAgentsBranchesEntity(DioResponseCPLife.fromJson(response.data!));

      return getCitiesAgentsBranchesEntity;
    } on DioError catch (ex) {
      throw handleDioErrorCP(ex);
    }
  }

  @override
  Future<GetStatesAgentsBranchesEntity> getStates(GetStatesAgentsBranchesParams params) async {
    String url = "${baseUrl}Agents/State?stateName=${params.partOfStateName}";
    try {
      final response = await dio.get(url);
      GetStatesAgentsBranchesEntity getStatesAgentsBranchesEntity =
          GetStatesAgentsBranchesEntity(DioResponseCPLife.fromJson(response.data!));

      return getStatesAgentsBranchesEntity;
    } on DioError catch (ex) {
      throw handleDioErrorCP(ex);
    }
  }

  @override
  Future<GetAgentsListEntity> getAgentsList(GetAgentsListParams params) async {
    String url;
    if (params.searchType != null) {
      url =
          "${baseUrl}Agents/State/${params.stateCode}/City/${params.cityCode}?searchType=${params.searchType}&query=${params.query}&page=${params.page}&pageSize=${params.pageSize}";
    } else {
      url =
          "${baseUrl}Agents/State/${params.stateCode}/City/${params.cityCode}?page=${params.page}&pageSize=${params.pageSize}";
    }

    try {
      final response = await dio.get(url);
      GetAgentsListEntity getAgentsListEntity = GetAgentsListEntity(DioResponseCPLife.fromJson(response.data!));
      return getAgentsListEntity;
    } on DioError catch (ex) {
      throw handleDioErrorCP(ex);
    }
  }
}

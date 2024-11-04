import 'package:ios_samx/core/dio/dio_error_darmanet.dart';
import 'package:ios_samx/feature/darmanet_app/cost_tracking/data/data_source/cost_tracking_remote_data_source.dart';
import 'package:ios_samx/feature/darmanet_app/cost_tracking/domain/entities/get_person_family_list/get_person_family_list_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_tracking/domain/usecase/get_person_family_list/param/get_person_family_list_param.dart';
import 'package:dio/dio.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CostTrackingRemoteDataSource)
@injectable
class CostTrackingRemoteDataSourceImp implements CostTrackingRemoteDataSource {
  final Dio dio;

  CostTrackingRemoteDataSourceImp({required this.dio});

  String baseUrl = FlavorConfig.instance.variables["darmanetURL"];

  @override
  Future<GetPersonFamilyListEntities> getPersonFamilyListEntities({required GetPersonFamilyListParam param}) async {
    String url = "$baseUrl/Report/PersonFamilyRecordList";
    try {
      final response = await dio.post(url, data: param.toJson());
      final GetPersonFamilyListEntities getPersonFamilyListEntities =
          GetPersonFamilyListEntities.fromJson(response.data);

      return getPersonFamilyListEntities;
    } on DioError catch (e) {
      throw handleDioErrorDarmanet(e);
    }
  }
}

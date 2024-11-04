import 'package:ios_samx/core/dio/dio_error.dart';
import 'package:ios_samx/core/dio/dio_response.dart';
import 'package:ios_samx/feature/darmanet_app/submit_discontent/data/data_source/submit_discontent_remote_data_source.dart';
import 'package:dio/dio.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entity/submit_discontent.dart';
import '../../domain/usecase/params/submit_discontent_params.dart';

@LazySingleton(as: SubmitDiscontentRemoteDataSource)
@injectable
class SubmitDiscontentRemoteDataSourceImpl implements SubmitDiscontentRemoteDataSource {
  final Dio dio;
  SubmitDiscontentRemoteDataSourceImpl({required this.dio});

  @override
  Future<SubmitDiscontentEntity> submitDiscontent({required SubmitDiscontentParams params}) async {
    String baseUrl = "${FlavorConfig.instance.variables["darmanetSupportUrl"]}/Ticket";
    try {
      Response response = await dio.post(baseUrl, data: params.toJson());
      DioResponse dioResponse = DioResponse.fromJson(response.data);
      SubmitDiscontentEntity entity = SubmitDiscontentEntity(dioResponse: dioResponse);
      return entity;
    } on DioError catch (ex) {
      throw handleDioError(ex);
    }
  }
}

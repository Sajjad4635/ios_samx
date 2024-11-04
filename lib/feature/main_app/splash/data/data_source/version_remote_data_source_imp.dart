import 'package:ios_samx/core/dio/dio_error.dart';
import 'package:ios_samx/core/dio/dio_response_samx.dart';
import 'package:ios_samx/feature/main_app/splash/data/data_source/version_remote_data_source.dart';
import 'package:ios_samx/feature/main_app/splash/domain/entities/last_version/last_version_response_entity.dart';
import 'package:ios_samx/feature/main_app/splash/domain/usecases/param/get_last_version/get_last_version_param.dart';
import 'package:dio/dio.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: VersionRemoteDataSource)
@injectable
class VersionRemoteDataSourceImp extends VersionRemoteDataSource {
  final Dio dio;

  String baseUrl = FlavorConfig.instance.variables["samxUrl"];

  VersionRemoteDataSourceImp({required this.dio});

  @override
  Future<LastVersionResponseEntity> getLastVersion(
      {required GetLastVersionParam param}) async {
    String url = "$baseUrl/AppVersion/last?currentVersion=${param.version}";
    try {
      final response = await dio.get(url);

      final DioResponseSamX dioResponse =
          DioResponseSamX.fromJson(response.data);

      final LastVersionResponseEntity entity =
          LastVersionResponseEntity(dioResponse: dioResponse);

      return entity;
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }
}

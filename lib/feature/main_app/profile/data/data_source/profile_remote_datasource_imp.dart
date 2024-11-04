import 'package:ios_samx/core/dio/dio_error_cp.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/profile/data/data_source/profile_remote_datasource.dart';
import 'package:ios_samx/feature/main_app/profile/domain/entities/download_picture/download_profile_picture_entities.dart';
import 'package:ios_samx/feature/main_app/profile/domain/entities/get_passport/get_passport_entities.dart';
import 'package:ios_samx/feature/main_app/profile/domain/entities/get_risk_score/get_risk_entities.dart';
import 'package:ios_samx/feature/main_app/profile/domain/entities/update_passport/update_passport_entities.dart';
import 'package:ios_samx/feature/main_app/profile/domain/entities/upload_picture/upload_profile_picture_entities.dart';
import 'package:ios_samx/feature/main_app/profile/domain/entities/zipcode_detail/zipcode_entities.dart';
import 'package:ios_samx/feature/main_app/profile/domain/entities/zipcode_update/zipcode_update_entities.dart';
import 'package:ios_samx/feature/main_app/profile/domain/usecase/download_picture/param/download_profile_picture_param.dart';
import 'package:ios_samx/feature/main_app/profile/domain/usecase/get_risk_score/param/get_risk_score_param.dart';
import 'package:ios_samx/feature/main_app/profile/domain/usecase/update_passport/param/update_passport_param.dart';
import 'package:ios_samx/feature/main_app/profile/domain/usecase/upload_picture/param/upload_profile_picture_param.dart';
import 'package:ios_samx/feature/main_app/profile/domain/usecase/zipcode_detail/zipcode_detail_param/zipcode_detail_param.dart';
import 'package:ios_samx/feature/main_app/profile/domain/usecase/zipcode_update/zipcode_update_param/zipcode_update_param.dart';
import 'package:dio/dio.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/dio/dio_error_samx.dart';
import '../../../../../core/dio/dio_response_cp.dart';
import '../../../../../core/dio/dio_response_samx.dart';
import '../../domain/entities/get_profile/get_profile_entities.dart';
import '../../domain/entities/get_score/get_score_entity.dart';
import '../../domain/entities/get_staff/get_staff_entities.dart';
import '../../domain/usecase/get_staff/param/get_staff_param.dart';
import 'package:http_parser/http_parser.dart';

@LazySingleton(as: ProfileRemoteDataSource)
@injectable
class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  final Dio dio;

  ProfileRemoteDataSourceImpl({required this.dio});

  String baseUrl = FlavorConfig.instance.variables["samxUrl"];


  @override
  Future<GetProfileEntities> getProfile({required NoParams noParams}) async {
    String url = "/profile";
    try {
      final response = await dio.get(url);
      final GetProfileEntities getProfileEntities =
          GetProfileEntities(DioResponseCPLife.fromJson(response.data));
      return getProfileEntities;
    } on DioException catch (ex) {
      throw handleDioErrorCP(ex);
    }
  }

  @override
  Future<GetStaffEntities> getStaff(
      {required GetStaffParam getStaffParam}) async {
    String url = "/profile/staff";
    try {
      final Response response =
          await dio.post(url, data: getStaffParam.toJson());
      final GetStaffEntities getStaffEntities = GetStaffEntities(
          dioResponseCPLife: DioResponseCPLife.fromJson(response.data));
      return getStaffEntities;
    } on DioException catch (ex) {
      throw handleDioErrorCP(ex);
    }
  }

  @override
  Future<GetScoreEntity> getScore({required NoParams noParams}) async {
    String url = "/Scores";
    try {
      final Response response = await dio.get(url);
      GetScoreEntity getScoreEntity =
          GetScoreEntity(DioResponseCPLife.fromJson(response.data));
      return getScoreEntity;
    } on DioException catch (ex) {
      throw handleDioErrorCP(ex);
    }
  }

  @override
  Future<GetRiskScoreEntities> getRiskScore(
      {required GetRiskScoreParam getRiskScoreParam}) async {
    String url = "$baseUrl/Drivers/Safety?NationalCode";

    try {
      final Response response = await dio.get(
          "$url=${getRiskScoreParam.nationalCode}&BirthDate=${getRiskScoreParam.birthDate}");

      final GetRiskScoreEntities getRiskScoreEntities = GetRiskScoreEntities(
        DioResponseSamX.fromJson(response.data!),
      );
      return getRiskScoreEntities;
    } on DioException catch (ex) {
      throw handleDioErrorSamX(ex);
    }
  }

  @override
  Future<DownloadProfilePictureEntity> downloadProfilePicture(
      {required DownloadProfilePictureParam
          downloadProfilePictureParam}) async {
    String url =
        "$baseUrl/users/Profile/picture?nationalCode=${downloadProfilePictureParam.nationalCode}";

    try {
      final Response response = await dio.get(url);

      final DioResponseSamX dioResponseSamX =
          DioResponseSamX.fromJson(response.data);
      DownloadProfilePictureEntity downloadProfilePictureEntity =
          DownloadProfilePictureEntity(dioResponseSamX: dioResponseSamX);
      return downloadProfilePictureEntity;
    } on DioException catch (ex) {
      throw handleDioErrorSamX(ex);
    }
  }

  @override
  Future<UploadProfilePictureEntity> uploadProfilePicture(
      {required UploadProfilePictureParams param}) async {

    String url =
        "$baseUrl/users/Profile/picture?NationalCode=${param.nationalCode}";

    try {
      FormData data;

      data = FormData.fromMap({
        'FileDetails': MultipartFile.fromBytes(
          param.byteFile!,
          filename: param.nationalCode,
          contentType: MediaType('image', 'png'), // تنظیم نوع محتوا
        ),
      });
      final response = await dio.post(
        url,
        data: data,
      );
      UploadProfilePictureEntity uploadProfilePictureEntity =
          UploadProfilePictureEntity(
              dioResponseSamX: DioResponseSamX.fromJson(response.data));

      return uploadProfilePictureEntity;
    } on DioException catch (e) {
      throw handleDioErrorSamX(e);
    }
  }

  @override
  Future<GetPassportEntities> getPassport({required NoParams noParams}) async {
    String url = "$baseUrl/users/profile/passport";
    try {
      final Response response = await dio.get(url);

      // final GetPassportEntities getPassportEntities = GetPassportEntities(DioResponseSamX.fromJson(response.data)) ;
      throw UnimplementedError;
    } on DioException catch (ex) {
      throw handleDioErrorSamX(ex);
    }
  }

  @override
  Future<ZipcodeEntities> zipcodeDetail(
      {required ZipcodeDetailParam zipcodeDetailParam}) async {
    String url =
        "$baseUrl/users/Profile/inquiry/zipcode/${zipcodeDetailParam.zipCode}";

    try {
      final Response response = await dio.get(url);
      final ZipcodeEntities zipcodeEntities = ZipcodeEntities(
        DioResponseSamX.fromJson(response.data!),
      );
      return zipcodeEntities;
    } on DioException catch (ex) {
      throw handleDioErrorSamX(ex);
    }
  }

  @override
  Future<UpdatePassportEntities> updatePassport(
      {required UpdatePassportParam updatePassportParam}) {
    // TODO: implement updatePassport
    throw UnimplementedError();
  }

  @override
  Future<ZipcodeUpdateEntities> updateZipcode({required ZipcodeUpdateParam zipcodeUpdateParam})async {
    String url =   "https://stg.cp-api.si24.ir/profile/postcode";
        try{
      final Response response = await dio.put(url, data:  zipcodeUpdateParam.toJson()) ;
      final ZipcodeUpdateEntities zipcodeUpdateEntities = ZipcodeUpdateEntities(
          dioResponseCPLife: DioResponseCPLife.fromJson(response.data));
      return zipcodeUpdateEntities ;
    } on DioException catch (ex) {
      throw handleDioErrorSamX(ex);
    }


  }
}

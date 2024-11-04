import 'package:ios_samx/core/dio/dio_error_cp.dart';
import 'package:ios_samx/core/dio/dio_response_cp.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/delete_relative/delete_relative_entities.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/edit_relative/edit_relative_entities.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/register_wihout_otp/register_without_otp_entities.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/relative/get_relative_entities.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/delete_relative/params/delete_relative_param.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/edit_relative/params/edit_relative_param.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/get_relative_list/params/get_relatives_params.dart';
import 'package:ios_samx/feature/main_app/relatives/data/data_source/relatives_remote_data_source.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/add_relative/add_relative_entities.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/relatives_list/relatives_list_entities.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/user_info/user_info_entities.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/add_relative/params/add_relative_param.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/register_without_otp/params/register_under_18_params.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/register_without_otp/params/register_upper_18_params.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/user_info_inquiry/params/user_info_inquiry_param.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: RelativesRemoteDataSource)
@injectable
class RelativesRemoteDataSourceImpl implements RelativesRemoteDataSource {
  final Dio dio;

  RelativesRemoteDataSourceImpl({required this.dio});

  @override
  Future<RelativeListEntities> getRelativesTypeList(
      {required NoParams params}) async {
    String url = "relatives";

    try {
      final response = await dio.get(
        url,
      );
      final DioResponseCPLife dioResponseCPLife =
          DioResponseCPLife.fromJson(response.data);
      final RelativeListEntities relativeListEntities =
          RelativeListEntities(dioResponseCPLife);
      return relativeListEntities;
    } on DioError catch (e) {
      throw handleDioErrorCP(e);
    }
  }

  @override
  Future<UserInfoEntities> userInfoInquiry(
      {required UserInfoInquiryParam userInfoInquiryParam}) async {
    String url = "profile/${userInfoInquiryParam.nationalCode}";

    try {
      final Response response =
          await dio.get(url);
      final UserInfoEntities userInfoEntities =
          UserInfoEntities(DioResponseCPLife.fromJson(response.data));

      return userInfoEntities;
    } on DioError catch (ex) {
      throw handleDioErrorCP(ex);
    }
  }

  @override
  Future<AddRelativeEntities> addRelative(
      {required AddRelativeParam addRelativeParam}) async {
    String url = "users/${addRelativeParam.nationalCode}/relatives";

    try {
      final Response response =
          await dio.post(url, data: addRelativeParam.toJson());

      final AddRelativeEntities addRelativeEntities = AddRelativeEntities(
          dioResponseCPLife: DioResponseCPLife.fromJson(response.data));

      return addRelativeEntities;
    } on DioError catch (ex) {
      throw handleDioErrorCP(ex);
    }
  }

  @override
  Future<GetRelativeEntities> getRelatives(
      {required GetRelativesParams getRelativesParams}) async {
    String path = "users/${getRelativesParams.nationalCode}/relatives";


    try {
      final Response response = await dio.get(path);

      final DioResponseCPLife dioResponseCPLife =
      DioResponseCPLife.fromJson(response.data);

      return GetRelativeEntities(dioResponseCPLife);
    } on DioException catch (e) {
      throw handleDioErrorCP(e);
    }
  }

  @override
  Future<DeleteRelativeEntities> deleteRelative({required DeleteRelativeParam deleteRelativeParam}) async{
    String url = "users/${deleteRelativeParam.nationalCode}/relatives/${deleteRelativeParam.relativeId}";


    try {
      final Response response =
          await dio.delete(url);

      final DeleteRelativeEntities deleteRelativeEntities = DeleteRelativeEntities(
          dioResponseCPLife: DioResponseCPLife.fromJson(response.data));

      return deleteRelativeEntities;
    } on DioError catch (ex) {
      throw handleDioErrorCP(ex);
    }
  }

  @override
  Future<EditRelativeEntities> editRelative({required EditRelativeParam editRelativeParam}) async{
    String url = "users/${editRelativeParam.nationalCode}/relatives/${editRelativeParam.id}";

    try {
      final Response response =
          await dio.put(url, data: editRelativeParam.toJson());

      final EditRelativeEntities editRelativeEntities = EditRelativeEntities(
          dioResponseCPLife: DioResponseCPLife.fromJson(response.data));

      return editRelativeEntities;
    } on DioError catch (ex) {
      throw handleDioErrorCP(ex);
    }
  }

  @override
  Future<RegisterWithoutOtpEntities> registerUserUnder18({required RegisterUnder18Params registerUnder18Params}) async{
    String url = "signup/minor";

    try {
      final Response response =
          await dio.post(url, data: registerUnder18Params.toJson());

      final RegisterWithoutOtpEntities registerWithoutOtpEntities = RegisterWithoutOtpEntities(
          dioResponseCPLife: DioResponseCPLife.fromJson(response.data));

      return registerWithoutOtpEntities;
    } on DioError catch (ex) {
      throw handleDioErrorCP(ex);
    }
  }

  @override
  Future<RegisterWithoutOtpEntities> registerUserUpper18({required RegisterUpper18Params registerUpper18Params}) async{
    String url = "signup/nootp";

    try {
      final Response response =
          await dio.post(url, data: registerUpper18Params.toJson());

      final RegisterWithoutOtpEntities registerWithoutOtpEntities = RegisterWithoutOtpEntities(
          dioResponseCPLife: DioResponseCPLife.fromJson(response.data));

      return registerWithoutOtpEntities;
    } on DioError catch (ex) {
      throw handleDioErrorCP(ex);
    }
  }


}

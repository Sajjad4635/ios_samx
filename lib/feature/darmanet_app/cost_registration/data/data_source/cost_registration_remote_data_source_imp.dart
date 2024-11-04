import 'package:ios_samx/core/dio/dio_error_darmanet.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/data/data_source/cost_registration_remote_data_source.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/check_repetitive/check_repetitive_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/create_cost/create_cost_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/create_cost/create_cost_response_data/create_cost_response_data.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/file_list/file_list_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/get_active_by_person/get_active_by_person_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/get_all_cost_desc/get_all_cost_desc_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/get_all_family_for_all_contract/get_all_family_for_all_contract_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/get_by_id/get_by_id_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/get_envelope_send_info/get_envelope_send_info_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/send_envelope/send_envelope_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/upload/upload_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/upload/upload_response_data/upload_response_data.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/upload_person_cost_image/upload_person_cost_image_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/check_repetitive/param/check_repetitive_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/create_cost/param/create_cost_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/destory/param/destroy_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/file_list/param/file_list_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/get_active_by_person/param/get_active_by_person_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/get_all_cost_desc/param/get_all_cost_desc_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/get_all_family_for_all_contract/param/get_all_family_for_all_contract_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/get_by_id/param/get_by_id_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/get_envelope_send_info/param/get_envelope_send_info_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/send_envelope/param/send_envelope_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/upload/param/upload_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/upload_person_cost_image/param/upload_person_cost_image_param.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CostRegistrationRemoteDataSource)
@injectable
class CostRegistrationRemoteDataSourceImp implements CostRegistrationRemoteDataSource {
  final Dio dio;

  CostRegistrationRemoteDataSourceImp({required this.dio});

  String baseUrl = FlavorConfig.instance.variables["darmanetURL"];

  @override
  Future<GetActiveByPersonEntities> getActiveByPerson({required GetActiveByPersonParam param}) async {
    String url = "$baseUrl/Contract/GetActiveByPerson";
    try {
      final response = await dio.post(
        url,
        data: param.toJson(),
      );
      final GetActiveByPersonEntities getActiveByPersonEntities = GetActiveByPersonEntities(
        response.data,
      );
      return getActiveByPersonEntities;
    } on DioError catch (e) {
      throw handleDioErrorDarmanet(e);
    }
  }

  @override
  Future<GetAllFamilyForAllContractEntities> getAllFamilyForAllContract(
      {required GetAllFamilyForAllContractParam param}) async {
    String url = "$baseUrl/Person/GetAllFamilyForAllContract";
    try {
      final response = await dio.post(
        url,
        data: param.toJson(),
      );
      final GetAllFamilyForAllContractEntities getAllFamilyForAllContractEntities = GetAllFamilyForAllContractEntities(
        response.data,
      );
      return getAllFamilyForAllContractEntities;
    } on DioError catch (e) {
      throw handleDioErrorDarmanet(e);
    }
  }

  @override
  Future<UploadEntities> uploadDocument({required UploadParam param}) async {
    String url = "$baseUrl/File/Upload";
    try {
      FormData data;
      if (kIsWeb) {
        data = FormData.fromMap({
          'file': MultipartFile.fromBytes(
            param.byteFile!,
            filename: param.fileName,
          ),
        });
      } else {
        data = FormData.fromMap({
          'files': [
            await MultipartFile.fromFile(
              param.file!.path,
              filename: param.fileName,
            )
          ],
        });
      }
      final response = await dio.post(
        "$url?fileSize=${param.fileSize}",
        data: data,
      );
      final UploadEntities uploadEntities =
          UploadEntities(uploadResponseData: UploadResponseData.fromJson(response.data));

      return uploadEntities;
    } on DioError catch (e) {
      throw handleDioErrorDarmanet(e);
    }
  }

  @override
  Future<CheckRepetitiveEntities> checkRepetitive({required CheckRepetitiveParam param}) async {
    String url = "$baseUrl/PersonCostItem/CheckRepetitive";
    try {
      final response = await dio.post(url, data: param);

      final CheckRepetitiveEntities checkRepetitiveEntities = CheckRepetitiveEntities.fromJson(response.data);

      return checkRepetitiveEntities;
    } on DioError catch (e) {
      throw handleDioErrorDarmanet(e);
    }
  }

  @override
  Future<CreateCostEntities> createCost({required CreateCostParam param}) async {
    String url = "$baseUrl/PersonCostItem/Create";
    try {
      final response = await dio.post(url, data: param);

      final CreateCostEntities createCostEntities =
          CreateCostEntities(costResponseData: CreateCostResponseData.fromJson(response.data));

      return createCostEntities;
    } on DioError catch (e) {
      throw handleDioErrorDarmanet(e);
    }
  }

  @override
  Future<UploadPersonCostImageEntities> uploadPersonCostImage({required UploadPersonCostImageParam param}) async {
    String url = "$baseUrl/CustomerCompanyCostItem/UploadPersonCostImage";
    try {
      final response = await dio.post(url, data: param);

      final UploadPersonCostImageEntities uploadPersonCostImageEntities =
          UploadPersonCostImageEntities.fromJson(response.data);

      return uploadPersonCostImageEntities;
    } on DioError catch (e) {
      throw handleDioErrorDarmanet(e);
    }
  }

  @override
  Future<SendEnvelopeEntities> sendEnvelope({required SendEnvelopeParam sendEnvelopeParam}) async {
    String url = "$baseUrl/PersonCostItem/SendEnvelope";
    try {
      final response = await dio.post(url, data: sendEnvelopeParam.toJson());

      final SendEnvelopeEntities sendEnvelopeEntities = SendEnvelopeEntities.fromJson(response.data);

      return sendEnvelopeEntities;
    } on DioError catch (e) {
      throw handleDioErrorDarmanet(e);
    }
  }

  @override
  Future<GetEnvelopeSendInfoEntities> getEnvelopeSendInfo({required GetEnvelopeSendInfoParam param}) async {
    String url = "$baseUrl/PersonCostItem/GetEnvelopeSendInfo";
    try {
      final response = await dio.post(url, data: param.toJson());

      final GetEnvelopeSendInfoEntities getEnvelopeSendInfoEntities =
          GetEnvelopeSendInfoEntities.fromJson(response.data);

      return getEnvelopeSendInfoEntities;
    } on DioError catch (e) {
      throw handleDioErrorDarmanet(e);
    }
  }

  @override
  Future<FileListEntities> fileList({required FileListParam param}) async {
    String url = "$baseUrl/CostImage/FileList";
    try {
      final response = await dio.post(url, data: param.toJson());

      final FileListEntities fileListEntities = FileListEntities.fromJson(response.data);

      return fileListEntities;
    } on DioError catch (e) {
      throw handleDioErrorDarmanet(e);
    }
  }

  @override
  Future<GetAllCostDescEntities> getAllCostDesc({required GetAllCostDescParam param}) async {
    String url = "$baseUrl/Lookup/GetAllCostDesc";
    try {
      final response = await dio.post(
        url,
        data: param.toJson(),
      );
      final GetAllCostDescEntities getAllCostDescEntities = GetAllCostDescEntities(
        response.data,
      );
      return getAllCostDescEntities;
    } on DioError catch (e) {
      throw handleDioErrorDarmanet(e);
    }
  }

  @override
  Future<GetByIdEntities> getById({required GetByIdParam param}) async {
    String url = "$baseUrl/Lookup/GetById";
    try {
      final response = await dio.post(
        url,
        data: param.toJson(),
      );
      final GetByIdEntities getByIdEntities = GetByIdEntities.fromJson(response.data);
      return getByIdEntities;
    } on DioError catch (e) {
      throw handleDioErrorDarmanet(e);
    }
  }

  @override
  Future<bool> destroy({required DestroyParam param}) async {
    String url = "$baseUrl/CostImage/Destroy";

    try {
      final response = await dio.post(url, data: param.toJson());
      final bool destroyEntities = response.data;
      return destroyEntities;
    } on DioError catch (e) {
      throw handleDioErrorDarmanet(e);
    }
  }
}

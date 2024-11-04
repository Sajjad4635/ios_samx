import 'dart:io';

import 'package:ios_samx/core/constant/strings.dart';
import 'package:ios_samx/core/dio/dio_error_darmanet.dart';
import 'package:ios_samx/core/dio/dio_response.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/data/data_source/introduction_tracking_remote_data_source.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/get_active_by_person_for_voucher/get_active_by_person_for_voucher_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/get_all_family_by_main_national_code/get_family_by_main_national_code_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/person_voucher_request_list/person_voucher_request_list.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/send_to_next_level/send_to_next_level_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/voucher_download/voucher_download_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/voucher_report/voucher_report_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/get_active_by_person_for_voucher/param/get_active_by_person_for_voucher_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/get_all_family_by_main_national_code/param/get_all_family_by_main_national_code_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/person_voucher_request_list/param/person_voucher_request_list_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/send_to_next_level/param/send_to_next_level_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/voucher_request_get_by_id/voucher_request_get_by_id_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/voucher_download/param/voucher_download_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/voucher_report/param/voucher_report_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/voucher_request_get_by_id/param/voucher_request_get_by_id_param.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

@LazySingleton(as: IntroductionTrackingRemoteDataSource)
@injectable
class IntroductionTrackingRemoteDataSourceImpl implements IntroductionTrackingRemoteDataSource {
  final Dio dio;

  IntroductionTrackingRemoteDataSourceImpl({required this.dio});

  String baseUrl = FlavorConfig.instance.variables["darmanetURL"];

  @override
  Future<GetAllFamilyByMainNationalCodeEntities> getAllFamilyByMainNationalCode(
      {required GetAllFamilyByMainNationalCodeParam param}) async {
    String url = "$baseUrl/Person/GetAllFamilyByMainNationalCode";
    try {
      final response = await dio.post(
        url,
        data: param.toJson(),
      );
      final GetAllFamilyByMainNationalCodeEntities getAllFamilyByMainNationalCodeEntities =
          GetAllFamilyByMainNationalCodeEntities(
        response.data,
      );
      return getAllFamilyByMainNationalCodeEntities;
    } on DioError catch (e) {
      throw handleDioErrorDarmanet(e);
    }
  }

  @override
  Future<GetActiveByPersonForVoucherEntities> getActiveByPersonForVoucher(
      {required GetActiveByPersonForVoucherParam param}) async {
    String url = "$baseUrl/Contract/GetActiveByPersonForVoucher";
    try {
      final response = await dio.post(
        url,
        data: param.toJson(),
      );
      final GetActiveByPersonForVoucherEntities getActiveByPersonForVoucherEntities =
          GetActiveByPersonForVoucherEntities(
        response.data,
      );
      return getActiveByPersonForVoucherEntities;
    } on DioError catch (e) {
      throw handleDioErrorDarmanet(e);
    }
  }

  @override
  Future<PersonVoucherRequestListEntities> personVoucherRequestListParam(
      {required PersonVoucherRequestListParam param}) async {
    String url = "$baseUrl/VoucherRequest/PersonVoucherRequestList";
    try {
      final response = await dio.post(
        url,
        data: param.toJson(),
      );
      final PersonVoucherRequestListEntities personVoucherRequestListEntities =
          PersonVoucherRequestListEntities.fromJson(response.data);
      return personVoucherRequestListEntities;
    } on DioError catch (e) {
      throw handleDioErrorDarmanet(e);
    }
  }

  @override
  Future<SendToNextLevelEntities> sendToNextLevel({required SendToNextLevelParam param}) async {
    String url = "$baseUrl/VoucherRequest/SendToNextLevel";
    try {
      final response = await dio.post(url, data: param.toJson());
      final SendToNextLevelEntities sendToNextLevelEntities = SendToNextLevelEntities.fromJson(response.data);
      return sendToNextLevelEntities;
    } on DioError catch (e) {
      throw handleDioErrorDarmanet(e);
    }
  }

  @override
  Future<VoucherRequestGetByIdEntities> voucherRequestGetById({required VoucherRequestGetByIdParam param}) async {
    String url = "$baseUrl/VoucherRequest/GetById";
    try {
      final response = await dio.post(
        url,
        data: param.toJson(),
      );
      final VoucherRequestGetByIdEntities voucherRequestGetByIdEntities =
          VoucherRequestGetByIdEntities.fromJson(response.data);
      return voucherRequestGetByIdEntities;
    } on DioError catch (e) {
      throw handleDioErrorDarmanet(e);
    }
  }

  @override
  Future<VoucherDownloadEntities> voucherDownload({required VoucherDownloadParam param}) async {
    String url = "$baseUrl/Voucher/DownloadFile";
    final Box box = Hive.box("user_info");
    final String authorization = await box.get(Strings.authorization);
    try {
      final response = await dio.get("$url?id=${param.id}",
          options: Options(responseType: ResponseType.bytes, headers: {
            "Authorization": "Bearer $authorization",
          }));
      List<String>? contentDisposition = response.headers['content-disposition'];
      String header = contentDisposition![0];
      RegExp regExp = RegExp(r'filename=([^;]+)');

      Match match = regExp.firstMatch(header) as Match;
      String? extractedFilename;
      // ignore: unnecessary_null_comparison
      if (match != null) {
        extractedFilename = match.group(1);
      } else {
        print('No match found');
      }

      if (kIsWeb) {
        print('Blob data received successfully.');

        return VoucherDownloadEntities(
            dioResponse: DioResponse(200, const [], response.data), contentDisposition: extractedFilename ?? "");
      } else {
        Uint8List blobData = response.data;
        final directory = await getApplicationDocumentsDirectory();
        final savePath = '${directory.path}/$extractedFilename'; // Specify the desired file name and extension
        File file = File(savePath);
        await file.writeAsBytes(blobData);

        print('Blob data received successfully.');

        return VoucherDownloadEntities(
            dioResponse: DioResponse(200, const [], file), contentDisposition: extractedFilename ?? "");
      }
    } on DioError catch (e) {
      throw handleDioErrorDarmanet(e);
    }
  }

  @override
  Future<VoucherReportEntities> voucherReport({required VoucherReportParam param}) async {
    String url = "$baseUrl/Voucher/PrintReport";
    final Box box = Hive.box("user_info");
    final String authorization = await box.get(Strings.authorization);
    try {
      final response = await dio.get("$url?VoucherId=${param.id}",
          options: Options(responseType: ResponseType.bytes, headers: {
            "Authorization": "Bearer $authorization",
          }));
      List<String>? contentDisposition = response.headers['content-disposition'];
      String header = contentDisposition![0];
      RegExp regExp = RegExp(r'filename=([^;]+)');

      Match match = regExp.firstMatch(header) as Match;
      String? extractedFilename = "voucher_report.pdf";
      // ignore: unnecessary_null_comparison
      if (match != null) {
        extractedFilename = match.group(1);
      } else {
        print('No match found');
      }

      if (kIsWeb) {
        print('Blob data received successfully.');

        return VoucherReportEntities(
            dioResponse: DioResponse(200, const [], response.data), contentDisposition: extractedFilename ?? "");
      } else {
        Uint8List blobData = response.data;
        final directory = await getApplicationDocumentsDirectory();
        final savePath = '${directory.path}/$extractedFilename'; // Specify the desired file name and extension
        File file = File(savePath);
        await file.writeAsBytes(blobData);

        print('Blob data received successfully.');

        return VoucherReportEntities(
            dioResponse: DioResponse(200, const [], file), contentDisposition: extractedFilename ?? "");
      }
    } on DioError catch (e) {
      throw handleDioErrorDarmanet(e);
    }
  }
}

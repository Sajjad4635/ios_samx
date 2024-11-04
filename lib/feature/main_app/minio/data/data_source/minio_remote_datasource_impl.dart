import 'dart:convert';
import 'dart:io';

import 'package:ios_samx/core/dio/dio_error_samx.dart';
import 'package:ios_samx/feature/main_app/minio/domain/entities/authenticate/authenticate_entities.dart';
import 'package:ios_samx/feature/main_app/minio/domain/entities/get_bucket/get_bucket_entities.dart';
import 'package:ios_samx/feature/main_app/minio/domain/entities/get_object_list/get_object_list_entities.dart';
import 'package:ios_samx/feature/main_app/minio/domain/entities/object_download/object_download_entities.dart';
import 'package:ios_samx/feature/main_app/minio/domain/entities/object_remove/object_remove_entities.dart';
import 'package:ios_samx/feature/main_app/minio/domain/entities/object_upload/object_upload_entities.dart';
import 'package:ios_samx/feature/main_app/minio/domain/usecase/authenticate/param/authenticate_param.dart';
import 'package:ios_samx/feature/main_app/minio/domain/usecase/get_bucket/param/get_bucket_param.dart';
import 'package:ios_samx/feature/main_app/minio/domain/usecase/get_object_list/param/get_object_list_param.dart';
import 'package:ios_samx/feature/main_app/minio/domain/usecase/object_download/param/object_download_param.dart';
import 'package:ios_samx/feature/main_app/minio/domain/usecase/object_remove/param/object_remove_param.dart';
import 'package:ios_samx/feature/main_app/minio/domain/usecase/object_upload/param/object_upload_param.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import '../../../../../core/dio/dio_response_samx.dart';
import 'minio_remote_datasource.dart';

@LazySingleton(as: MinioRemoteDataSource)
@injectable
class MinioRemoteDataSourceImpl implements MinioRemoteDataSource {
  final Dio dio;

  MinioRemoteDataSourceImpl({required this.dio});

  String baseUrl = FlavorConfig.instance.variables["samxUrl"];

  @override
  Future<AuthenticateEntities> authenticate({required AuthenticateParam authenticateParam}) async {
    String url = "$baseUrl/Drive/login";

    try {
      final Response response = await dio.post(url, data: authenticateParam.toJson());
      final DioResponseSamX dioResponseSamX = DioResponseSamX.fromJson(json.decode(response.toString()));

      final AuthenticateEntities authenticateEntities = AuthenticateEntities(dioResponseSamX);
      return authenticateEntities;
    } on DioException catch (e) {
      throw handleDioErrorSamX(e);
    }
  }

  @override
  Future<GetBucketEntities> getBucket({required GetBucketParam getBucketParam}) async {
    String url = "$baseUrl/Drive/buckets";
    try {
      final Response response = await dio.post(url, data: getBucketParam.toJson());
      final DioResponseSamX dioResponseSamX = DioResponseSamX.fromJson(json.decode(response.toString()));
      final GetBucketEntities getBucketEntities = GetBucketEntities(dioResponseSamX);

      return getBucketEntities;
    } on DioException catch (e) {
      throw handleDioErrorSamX(e);
    }
  }

  @override
  Future<GetObjectListEntities> getObjectList({required GetObjectListParam getObjectListParam}) async {
    String url = "$baseUrl/Drive/objects";
    try {
      final Response response = await dio.post(url, data: getObjectListParam.toJson());
      final GetObjectListEntities getObjectListEntities = GetObjectListEntities(
        DioResponseSamX.fromJson(response.data),
      );
      return getObjectListEntities;
    } on DioException catch (e) {
      throw handleDioErrorSamX(e);
    }
  }

  @override
  Future<ObjectRemoveEntities> objectRemove({required ObjectRemoveParam objectRemoveParam}) async {
    String url = "$baseUrl/Drive/remove";
    try {
      final Response response = await dio.post(url, data: objectRemoveParam.toJson());
      final ObjectRemoveEntities objectRemoveEntities =
          ObjectRemoveEntities(dioResponseSamX: DioResponseSamX.fromJson(response.data));
      return objectRemoveEntities;
    } on DioException catch (e) {
      throw handleDioErrorSamX(e);
    }
  }

  @override
  Future<ObjectDownloadEntities> objectDownload({required ObjectDownloadParam objectDownloadParam}) async {
    String url = "$baseUrl/Drive/download";

    try {
      final Response response =
          await dio.post(url, data: objectDownloadParam.toJson());
      DioResponseSamX dioResponseSamX = DioResponseSamX.fromJson(response.data);
      Uint8List decodedBytes = base64Decode(dioResponseSamX.data);
      ByteData blob = ByteData.view(decodedBytes.buffer);
      if (kIsWeb) {
        print('Blob data received successfully.');

        return ObjectDownloadEntities(
            dioResponseSamX: DioResponseSamX("200", "", blob, const [], "", const [], const []),
            contentDisposition: objectDownloadParam.objectName);
      } else {
        Uint8List blobData = response.data;
        final directory = await getApplicationDocumentsDirectory();
        final savePath =
            '${directory.path}/${objectDownloadParam.objectName}'; // Specify the desired file name and extension
        File file = File(savePath);
        await file.writeAsBytes(blobData);

        print('Blob data received successfully.');

        return ObjectDownloadEntities(
            dioResponseSamX: DioResponseSamX("200", "", response.data, const [], "", const [], const []),
            contentDisposition: objectDownloadParam.objectName);
      }
    } on DioException catch (e) {
      throw handleDioErrorSamX(e);
    }
  }

  @override
  Future<ObjectUploadEntities> objectUpload({required ObjectUploadParam objectUploadParam}) async {
    String url = "$baseUrl/Drive/upload";
    try {
      FormData data;
      if (kIsWeb) {
        data = FormData.fromMap({
          'FileDetails': MultipartFile.fromBytes(
            objectUploadParam.byteFile!,
            filename: objectUploadParam.objectName,
          ),
          'accessKeyId': objectUploadParam.accessKeyId,
          'secretAccessKey': objectUploadParam.secretAccessKey,
          'sessionToken': objectUploadParam.sessionToken,
          'bucketName': objectUploadParam.bucketName,
          'objectName': objectUploadParam.objectName,
        });
      } else {
        data = FormData.fromMap({
          'FileDetails': [await MultipartFile.fromFile(objectUploadParam.file!.path)],
          'accessKeyId': objectUploadParam.accessKeyId,
          'secretAccessKey': objectUploadParam.secretAccessKey,
          'sessionToken': objectUploadParam.sessionToken,
          'bucketName': objectUploadParam.bucketName,
          'objectName': objectUploadParam.objectName,
        });
      }

      final response = await dio.post(url, data: data);

      final ObjectUploadEntities objectUploadEntities =
          ObjectUploadEntities(dioResponseSamX: DioResponseSamX.fromJson(response.data));

      return objectUploadEntities;
    } on DioException catch (e) {
      throw handleDioErrorSamX(e);
    }
  }
}

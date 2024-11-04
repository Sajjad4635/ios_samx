import 'dart:io';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class ObjectUploadParam extends Equatable {
  final String accessKeyId;
  final String secretAccessKey;
  final String sessionToken;
  final String bucketName;
  final String objectName;
  final List<int>? byteFile;

  @JsonKey(name: 'FileDetails')
  final File? file;

  const ObjectUploadParam(

      {required this.accessKeyId,
        this.byteFile,
      required this.secretAccessKey,
      required this.sessionToken,
      required this.bucketName,
      required this.objectName,
      required this.file});

  // Map<String, dynamic> toJson() => _$ObjectUploadParamToJson(this);

  @override
  List<Object?> get props =>
      [accessKeyId, secretAccessKey, sessionToken, objectName, file , bucketName];
}

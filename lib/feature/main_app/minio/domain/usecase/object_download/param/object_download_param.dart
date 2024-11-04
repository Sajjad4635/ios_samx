import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'object_download_param.g.dart';

@JsonSerializable(createFactory: false)
class ObjectDownloadParam extends Equatable {
  final String accessKeyId;
  final String secretAccessKey;
  final String sessionToken;
  final String bucketName;
  final String objectName;

  const ObjectDownloadParam(
      {required this.accessKeyId,
      required this.secretAccessKey,
      required this.sessionToken,
      required this.bucketName,
      required this.objectName});

  Map<String, dynamic> toJson() => _$ObjectDownloadParamToJson(this);

  @override
  List<Object?> get props =>
      [accessKeyId, secretAccessKey, sessionToken, bucketName, objectName];
}

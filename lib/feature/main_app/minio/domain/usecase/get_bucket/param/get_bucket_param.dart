import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'get_bucket_param.g.dart';

@JsonSerializable(createFactory: false)
class GetBucketParam extends Equatable {
  final String accessKeyId;
  final String secretAccessKey;
  final String sessionToken;

  const GetBucketParam(
      {required this.accessKeyId,
      required this.secretAccessKey,
      required this.sessionToken});

  Map<String, dynamic> toJson() => _$GetBucketParamToJson(this);

  @override
  List<Object?> get props => [accessKeyId, secretAccessKey, sessionToken];
}

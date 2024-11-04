import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_object_list_param.g.dart';

@JsonSerializable(createFactory: false)
class GetObjectListParam extends Equatable {
  final String accessKeyId;
  final String secretAccessKey;
  final String sessionToken;
  final String bucketName ;

const  GetObjectListParam({required this.accessKeyId, required this.secretAccessKey, required this.sessionToken, required this.bucketName});

  Map<String, dynamic> toJson() => _$GetObjectListParamToJson(this);

  @override
  List<Object?> get props => [accessKeyId, secretAccessKey, sessionToken , bucketName];

}

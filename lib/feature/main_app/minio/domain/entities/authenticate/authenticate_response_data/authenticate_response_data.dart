import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authenticate_response_data.g.dart';

@JsonSerializable(createToJson: false)
class AuthenticateResponseData extends Equatable {
  final String accessKeyId;
  final String secretAccessKey;
  final String sessionToken;

  const AuthenticateResponseData(
      {required this.accessKeyId,
      required this.secretAccessKey,
      required this.sessionToken});

  factory AuthenticateResponseData.fromJson(Map<String, dynamic> json) =>
      _$AuthenticateResponseDataFromJson(json);


  @override
  List<Object?> get props => [accessKeyId, secretAccessKey, sessionToken];
}

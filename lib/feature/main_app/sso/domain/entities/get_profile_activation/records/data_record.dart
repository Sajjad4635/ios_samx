import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';


part 'data_record.g.dart';

@JsonSerializable(createToJson: false)
class DataRecords extends Equatable {
  @JsonKey(name: "access_token")
  final String accessToken;
  @JsonKey(name: "expires_in")
  final int expiresIn;
  @JsonKey(name: "refresh_expires_in")
  final int refreshExpiresin;
  @JsonKey(name: "refresh_token")
  final String refreshToken;
  @JsonKey(name: "token_type")
  final String tokenType;

  const DataRecords({
    required this.accessToken,
    required this.expiresIn,
    required this.refreshExpiresin,
    required this.refreshToken,
    required this.tokenType,
  });

  factory DataRecords.fromJson(Map<String, dynamic> json) =>
      _$DataRecordsFromJson(json);

  @override
  List<Object?> get props =>
      [accessToken, expiresIn, refreshExpiresin, refreshToken, tokenType];
}

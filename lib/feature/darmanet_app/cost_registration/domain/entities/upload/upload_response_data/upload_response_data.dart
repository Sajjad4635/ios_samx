import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_response_data.g.dart';

@JsonSerializable(createToJson: false)
class UploadResponseData extends Equatable {
  @JsonKey(name: "succeed")
  final bool succeed;
  @JsonKey(name: "errorMessage")
  final String? errorMessage;
  @JsonKey(name: "Id")
  final String id;
  @JsonKey(name: "WarningMessage")
  final String? warningMessage;

  const UploadResponseData({
    required this.succeed,
    required this.errorMessage,
    required this.id,
    required this.warningMessage,
  });

  factory UploadResponseData.fromJson(Map<String, dynamic> json) => _$UploadResponseDataFromJson(json);

  @override
  List<Object?> get props => [succeed, errorMessage, id, warningMessage];
}

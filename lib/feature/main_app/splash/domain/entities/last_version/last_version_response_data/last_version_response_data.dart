import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'last_version_response_data.g.dart';

@JsonSerializable(createToJson: false)
class LastVersionResponseData extends Equatable {
  final String versionNo;
  final bool isThisVersionForceForApp;
  final String changelog;
  final String releaseDate;

  const LastVersionResponseData({
    required this.versionNo,
    required this.isThisVersionForceForApp,
    required this.changelog,
    required this.releaseDate,
  });

  factory LastVersionResponseData.fromJson(Map<String, dynamic> json) =>
      _$LastVersionResponseDataFromJson(json);

  @override
  List<Object?> get props => [
        versionNo,
        isThisVersionForceForApp,
        changelog,
        releaseDate,
      ];
}

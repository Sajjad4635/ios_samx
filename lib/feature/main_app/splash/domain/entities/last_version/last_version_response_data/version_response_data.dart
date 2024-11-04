import 'package:ios_samx/feature/main_app/splash/domain/entities/last_version/last_version_response_data/last_version_response_data.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'version_response_data.g.dart';

@JsonSerializable(createToJson: false)
class VersionResponseData extends Equatable {
  final LastVersionResponseData? lastVersion;
  final bool isAppUpToDate;

  const VersionResponseData({
    required this.lastVersion,
    required this.isAppUpToDate,
  });

  factory VersionResponseData.fromJson(Map<String, dynamic> json) =>
      _$VersionResponseDataFromJson(json);

  @override
  List<Object?> get props => [
        lastVersion ,
        isAppUpToDate,
      ];
}

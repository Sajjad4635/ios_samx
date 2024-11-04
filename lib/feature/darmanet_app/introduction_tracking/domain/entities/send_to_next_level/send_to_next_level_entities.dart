import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'send_to_next_level_entities.g.dart';

@JsonSerializable(createToJson: false)
class SendToNextLevelEntities extends Equatable {

  final bool succeed;
  final String errorMessage;
  @JsonKey(name: "Id")
  final String id;
  @JsonKey(name: "Data")
  final String? data;
  @JsonKey(name: "WarningMessage")
  final String? warningMessage;

  const SendToNextLevelEntities({required this.succeed, required this.errorMessage, required this.id, required this.data, required this.warningMessage});

  factory SendToNextLevelEntities.fromJson(Map<String, dynamic> json) =>
      _$SendToNextLevelEntitiesFromJson(json);

  @override
  List<Object?> get props => [succeed, errorMessage, id, data, warningMessage];





}
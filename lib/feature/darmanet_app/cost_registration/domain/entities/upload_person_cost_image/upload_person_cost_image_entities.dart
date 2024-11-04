import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'upload_person_cost_image_entities.g.dart';

@JsonSerializable(createToJson: false)
class UploadPersonCostImageEntities extends Equatable {
  final bool succeed;
  final String? error;
  final Parameter parameter;

  const UploadPersonCostImageEntities({
    required this.succeed,
    required this.error,
    required this.parameter,
  });

  factory UploadPersonCostImageEntities.fromJson(Map<String, dynamic> json) =>
      _$UploadPersonCostImageEntitiesFromJson(json);

  @override
  List<Object?> get props => [succeed, parameter];
}

@JsonSerializable()
class Parameter extends Equatable {
  @JsonKey(name: "Count")
  final int count;
  @JsonKey(name: "CostId")
  final String costId;

  const Parameter({required this.count, required this.costId});

    factory Parameter.fromJson(Map<String, dynamic> json) =>
      _$ParameterFromJson(json);

  @override
  List<Object?> get props => [count, costId];
}

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'upload_person_cost_image_param.g.dart';

@JsonSerializable(createFactory: false)
class UploadPersonCostImageParam extends Equatable {
  @JsonKey(name: "CostItemId")
  final String costItemId;
  @JsonKey(name: "EnvelopeId")
  final String envelopeId;
  @JsonKey(name: "FileIds")
  final List<String> fileIds;

  const UploadPersonCostImageParam({
    required this.costItemId,
    required this.envelopeId,
    required this.fileIds,
  });

  Map<String, dynamic> toJson() => _$UploadPersonCostImageParamToJson(this);

  @override
  List<Object?> get props => [costItemId, envelopeId, fileIds];
}

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'send_envelope_entities.g.dart';

@JsonSerializable(createToJson: false)
class SendEnvelopeEntities extends Equatable {
  final bool succeed;
  final String? errorMessage;
  @JsonKey(name: 'Id')
  final String? id;
  @JsonKey(name: "WarningMessage")
  final String? warningMessage;

  const SendEnvelopeEntities({
    required this.succeed,
    required this.errorMessage,
    required this.id,
    required this.warningMessage,
  });

  factory SendEnvelopeEntities.fromJson(Map<String, dynamic> json) => _$SendEnvelopeEntitiesFromJson(json);

  @override
  List<Object?> get props => [
        succeed,
        errorMessage,
        id,
        warningMessage,
      ];
}

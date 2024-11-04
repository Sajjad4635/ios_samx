import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'send_envelope_param.g.dart';

@JsonSerializable(createFactory: false)
class SendEnvelopeParam extends Equatable {
  @JsonKey(name: "Id")
  final String id;

  const SendEnvelopeParam({required this.id});

  Map<String, dynamic> toJson() => _$SendEnvelopeParamToJson(this);
  
  @override
  List<Object?> get props => [id];
}

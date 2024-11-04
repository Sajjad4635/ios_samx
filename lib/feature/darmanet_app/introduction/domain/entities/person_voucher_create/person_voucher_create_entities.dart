import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'person_voucher_create_entities.g.dart';

@JsonSerializable(createToJson: false)
class PersonVoucherCreateEntities extends Equatable {
  final bool succeed;
  final String errorMessage;
  @JsonKey(name: "Id")
  final String id;

  const PersonVoucherCreateEntities({
    required this.errorMessage,
    required this.id,
    required this.succeed,
  });

  factory PersonVoucherCreateEntities.fromJson(Map<String, dynamic> json) =>
      _$PersonVoucherCreateEntitiesFromJson(json);

  @override
  List<Object?> get props => [succeed, errorMessage, id];
}

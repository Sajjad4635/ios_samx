import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'check_repetitive_entities.g.dart';

@JsonSerializable()
class CheckRepetitiveEntities extends Equatable {
  final bool succeed;
  final String message;
  final bool iswarning;

  const CheckRepetitiveEntities({required this.succeed, required this.message, required this.iswarning});

  factory CheckRepetitiveEntities.fromJson(Map<String, dynamic> json) => _$CheckRepetitiveEntitiesFromJson(json);

  @override
  List<Object?> get props => [succeed, message, iswarning];
}

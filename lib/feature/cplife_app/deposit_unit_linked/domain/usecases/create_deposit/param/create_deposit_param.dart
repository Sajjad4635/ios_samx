import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_deposit_param.g.dart';

@JsonSerializable(createFactory: false)
class CreateDepositParam extends Equatable {
  final int id;
  final int amount;

  const CreateDepositParam({required this.id, required this.amount});

  Map<String, dynamic> toJson() => _$CreateDepositParamToJson(this);

  @override
  List<Object?> get props => [id, amount];
}

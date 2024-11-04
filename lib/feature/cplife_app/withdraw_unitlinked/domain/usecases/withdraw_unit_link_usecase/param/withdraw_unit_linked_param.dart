import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'withdraw_unit_linked_param.g.dart';

@JsonSerializable(createFactory: false)
class CreateWithdrawUnitLinkedParam extends Equatable {
  final int id;
  final int amount;
  // final int percent;
  final String iban;
  final String owner;

  const CreateWithdrawUnitLinkedParam({
    required this.id,
    required this.amount,
    // required this.percent,
    required this.iban,
    required this.owner,
  });

  Map<String, dynamic> toJson() => _$CreateWithdrawUnitLinkedParamToJson(this);
  
  @override
  List<Object?> get props => [id, amount, iban, owner];
}

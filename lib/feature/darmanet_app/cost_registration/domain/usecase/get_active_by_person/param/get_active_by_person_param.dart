import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_active_by_person_param.g.dart';

@JsonSerializable(createFactory: false)
class GetActiveByPersonParam extends Equatable {
  @JsonKey(name: "PersonId")
  final String? personId;
  @JsonKey(name: "ContractKindList")
  final List<int> contractKindList;

  const GetActiveByPersonParam({required this.personId, required this.contractKindList});

  Map<String, dynamic> toJson() => _$GetActiveByPersonParamToJson(this);

  @override
  List<Object?> get props => [personId, contractKindList];
}

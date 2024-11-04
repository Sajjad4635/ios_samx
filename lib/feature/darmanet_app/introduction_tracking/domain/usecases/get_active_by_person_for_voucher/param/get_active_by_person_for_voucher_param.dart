import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_active_by_person_for_voucher_param.g.dart';

@JsonSerializable(createFactory: false)
class GetActiveByPersonForVoucherParam extends Equatable {
  @JsonKey(name: "MainPersonNationalCode")
  final String mainPersonNationalCode;
  @JsonKey(name: "ContractKindList")
  final List<int> contractKindList;

  const GetActiveByPersonForVoucherParam({required this.mainPersonNationalCode, required this.contractKindList});

  Map<String, dynamic> toJson() => _$GetActiveByPersonForVoucherParamToJson(this);

  @override
  List<Object?> get props => [mainPersonNationalCode, contractKindList];
}

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_person_family_list_param.g.dart';

@JsonSerializable(createFactory: false)
class GetPersonFamilyListParam extends Equatable {
  final String MainNationalCode;
  final String? AgainstEnvelopeState;
  final int? Offset;
  final int? Limit;
  final String? PersonId;
  final String? CostDescriptionId;
  final String? FromCostDate;
  final String? ToCostDate;
  final String? SumFieldName;
  final String? SortField;
  final String? SortDir;

  const GetPersonFamilyListParam({
    required this.MainNationalCode,
    this.AgainstEnvelopeState,
    this.Offset,
    this.Limit,
    this.PersonId,
    this.CostDescriptionId,
    this.FromCostDate,
    this.ToCostDate,
    this.SumFieldName,
    this.SortField,
    this.SortDir = "DESC",
  });

  Map<String, dynamic> toJson() => _$GetPersonFamilyListParamToJson(this);

  @override
  List<Object?> get props => [
        MainNationalCode,
        AgainstEnvelopeState,
        Offset,
        Limit,
        PersonId,
        CostDescriptionId,
        FromCostDate,
        ToCostDate,
        SumFieldName,
        SortField,
        SortDir,
      ];
}

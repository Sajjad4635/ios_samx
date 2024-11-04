import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'person_voucher_request_list_param.g.dart';

@JsonSerializable(createFactory: false)
class PersonVoucherRequestListParam extends Equatable {
  @JsonKey(name: "PersonId")
  final String personId;
  @JsonKey(name: "CreatorId")
  final String creatorId;
  @JsonKey(name: "SubmitType")
  final String submitType;
  @JsonKey(name: "CreatorIsExpert")
  final String creatorIsExpert;
  @JsonKey(name: "VoucherNumber")
  final String voucherNumber;
  @JsonKey(name: "FromDate")
  final String fromDate;
  @JsonKey(name: "ToDate")
  final String toDate;
  @JsonKey(name: "PatientName")
  final String patientName;
  @JsonKey(name: "NationalCode")
  final String nationalCode;
  @JsonKey(name: "Offset")
  final int offset;
  @JsonKey(name: "Limit")
  final int limit;
  @JsonKey(name: "SumFieldName")
  final String sumFieldName;
  @JsonKey(name: "SortField")
  final String sortField;
  @JsonKey(name: "SortDir")
  final String sortDir;

  const PersonVoucherRequestListParam({
    required this.personId,
    required this.creatorId,
    required this.submitType,
    required this.creatorIsExpert,
    required this.voucherNumber,
    required this.fromDate,
    required this.toDate,
    required this.limit,
    required this.nationalCode,
    required this.offset,
    required this.patientName,
    required this.sortDir,
    required this.sortField,
    required this.sumFieldName,
  });

  Map<String, dynamic> toJson() => _$PersonVoucherRequestListParamToJson(this);

  @override
  List<Object?> get props => [
        personId,
        creatorId,
        submitType,
        creatorIsExpert,
        voucherNumber,
        fromDate,
        toDate,
        limit,
        nationalCode,
        offset,
        patientName,
        sortDir,
        sortField,
        sumFieldName,
      ];
}

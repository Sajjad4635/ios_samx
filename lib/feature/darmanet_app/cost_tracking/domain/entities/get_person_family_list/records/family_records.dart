import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'family_records.g.dart';

@JsonSerializable(createToJson: false)
class FamilyRecords extends Equatable {
  @JsonKey(name: "Id")
  final String? id;
  @JsonKey(name: "PersonName")
  final String? personName;
  @JsonKey(name: "EnvelopeIndex")
  final int? envelopeIndex;
  @JsonKey(name: "GroupName")
  final String? groupName;
  @JsonKey(name: "CostStringDescription")
  final String? costStringDescription;
  @JsonKey(name: "ErrorTypeDesc")
  final String? errorTypeDesc;
  @JsonKey(name: "CenterName")
  final String? centerName;
  @JsonKey(name: "CostDate")
  final String? costDate;
  @JsonKey(name: "CoverageName")
  final String? coverageName;
  @JsonKey(name: "InvoiceDate")
  final String? invoiceDate;
  @JsonKey(name: "GivenAmount")
  final int? givenAmount;
  @JsonKey(name: "PayableAmount")
  final int? payableAmount;
  @JsonKey(name: "CostDescription")
  final String? costDescription;
  @JsonKey(name: "CostDescriptionTitle")
  final String? costDescriptionTitle;
  @JsonKey(name: "NationalCode")
  final String? nationalCode;
  @JsonKey(name: "DateInserted")
  final String? dateInserted;
  @JsonKey(name: "ChequeDate")
  final String? chequeDate;

  const FamilyRecords({
    this.personName,
    this.id,
    this.envelopeIndex,
    this.groupName,
    this.costStringDescription,
    this.errorTypeDesc,
    this.centerName,
    this.costDate,
    this.coverageName,
    this.invoiceDate,
    this.givenAmount,
    this.payableAmount,
    this.costDescription,
    this.costDescriptionTitle,
    this.nationalCode,
    this.dateInserted,
    this.chequeDate,
  });

  factory FamilyRecords.fromJson(Map<String, dynamic> json) => _$FamilyRecordsFromJson(json);

  @override
  List<Object?> get props => [
        id,
        personName,
        envelopeIndex,
        groupName,
        costStringDescription,
        errorTypeDesc,
        centerName,
        costDate,
        coverageName,
        invoiceDate,
        givenAmount,
        payableAmount,
        costDescription,
        costDescriptionTitle,
        nationalCode,
        dateInserted,
      ];
}

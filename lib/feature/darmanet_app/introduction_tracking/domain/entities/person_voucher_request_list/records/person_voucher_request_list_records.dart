import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'person_voucher_request_list_records.g.dart';

@JsonSerializable(createToJson: false)
class PersonVoucherRequestListRecords extends Equatable {
  @JsonKey(name: "VoucherNumber")
  final String? voucherNumber;
  @JsonKey(name: "VoucherId")
  final String? voucherId;
  @JsonKey(name: "PersonName")
  final String? personName;
  @JsonKey(name: "CustomerCompanyName")
  final String? customerCompanyName;
  @JsonKey(name: "ClinicName")
  final String? clinicName;
  @JsonKey(name: "StateDesc")
  final String? stateDesc;
  @JsonKey(name: "DateInserted")
  final String? dateInserted;
  @JsonKey(name: "ValidityEndDate")
  final String? validityEndDate;
  @JsonKey(name: "Id")
  final String? id;
  @JsonKey(name: "State")
  final int state;

  const PersonVoucherRequestListRecords({
    required this.voucherNumber,
    required this.personName,
    required this.customerCompanyName,
    required this.clinicName,
    required this.stateDesc,
    required this.dateInserted,
    required this.validityEndDate,
    required this.id,
    required this.state,
    required this.voucherId,
  });

  factory PersonVoucherRequestListRecords.fromJson(Map<String, dynamic> json) =>
      _$PersonVoucherRequestListRecordsFromJson(json);

  @override
  List<Object?> get props => [
        voucherNumber,
        personName,
        customerCompanyName,
        clinicName,
        stateDesc,
        dateInserted,
        validityEndDate,
        id,
        state,
        voucherId,
      ];
}

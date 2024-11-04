import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'person_voucher_create_param.g.dart';

@JsonSerializable(createFactory: false)
class PersonVoucherCreateParam extends Equatable {
  @JsonKey(name: "Id")
  final String id;
  @JsonKey(name: "State")
  final String state;
  @JsonKey(name: "VoucherNumber")
  final String voucherNumber;
  @JsonKey(name: "Code")
  final String code;
  @JsonKey(name: "CustomerCompanyId")
  final String customerCompanyId;
  @JsonKey(name: "SubmitType")
  final String submitType;
  @JsonKey(name: "PersonId")
  final String personId;
  @JsonKey(name: "DoctorFileId")
  final String doctorFileId;
  @JsonKey(name: "DoctorId")
  final String doctorId;
  @JsonKey(name: "Type")
  final String type;
  @JsonKey(name: "ContractId")
  final String contractId;
  @JsonKey(name: "Phone")
  final String phone;
  @JsonKey(name: "FileId")
  final String fileId;
  @JsonKey(name: "AttachmentFileId")
  final List<String> attachmentFileId;
  @JsonKey(name: "CityId")
  final String cityId;
  @JsonKey(name: "ClinicId")
  final String clinicId;
  @JsonKey(name: "text-ClinicId")
  final String textClinicId;
  @JsonKey(name: "InsuranceCompanyId")
  final String insuranceCompanyId;

  const PersonVoucherCreateParam({
    required this.id,
    required this.state,
    required this.voucherNumber,
    required this.code,
    required this.customerCompanyId,
    required this.submitType,
    required this.personId,
    required this.doctorFileId,
    required this.doctorId,
    required this.type,
    required this.contractId,
    required this.phone,
    required this.fileId,
    required this.attachmentFileId,
    required this.cityId,
    required this.clinicId,
    required this.textClinicId,
    required this.insuranceCompanyId,
  });

  Map<String, dynamic> toJson() => _$PersonVoucherCreateParamToJson(this);

  @override
  List<Object?> get props => [
        id,
        state,
        voucherNumber,
        code,
        customerCompanyId,
        submitType,
        personId,
        doctorFileId,
        doctorId,
        type,
        contractId,
        phone,
        fileId,
        attachmentFileId,
        cityId,
        clinicId,
        textClinicId,
        insuranceCompanyId,
      ];
}

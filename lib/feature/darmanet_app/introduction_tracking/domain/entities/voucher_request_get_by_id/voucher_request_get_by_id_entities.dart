import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'voucher_request_get_by_id_entities.g.dart';

@JsonSerializable(createToJson: false)
class VoucherRequestGetByIdEntities extends Equatable {
  @JsonKey(name: "Code")
  final int code;
  @JsonKey(name: "ClinicCityName")
  final String? clinicCityName;
  @JsonKey(name: "TypeDesc")
  final String? typeDesc;
  @JsonKey(name: "PersonName")
  final String? personName;
  @JsonKey(name: "ClinicName")
  final String? clinicName;
  @JsonKey(name: "Phone")
  final String? phone;
  @JsonKey(name: "FileId")
  final String? fileId;
  @JsonKey(name: "AttachmentFileId")
  final List? attachmentFileId;
  @JsonKey(name: "VoucherNumber")
  final String? voucherNumber;
  

  const VoucherRequestGetByIdEntities({
    required this.code,
    required this.clinicCityName,
    required this.typeDesc,
    required this.personName,
    required this.clinicName,
    required this.phone,
    required this.attachmentFileId,
    required this.fileId,
    required this.voucherNumber,
  });

  factory VoucherRequestGetByIdEntities.fromJson(Map<String, dynamic> json) =>
      _$VoucherRequestGetByIdEntitiesFromJson(json);

  @override
  List<Object?> get props =>
      [code, clinicCityName, typeDesc, personName, clinicName, phone, fileId, attachmentFileId, voucherNumber,];
}

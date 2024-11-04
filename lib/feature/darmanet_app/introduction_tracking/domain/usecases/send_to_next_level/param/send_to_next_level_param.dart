import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_to_next_level_param.g.dart';

@JsonSerializable(createFactory: false)
class SendToNextLevelParam extends Equatable {
  @JsonKey(name: "Id")
  final String id;
  @JsonKey(name: "State")
  final int state;
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
  @JsonKey(name: "Type")
  final String type;
  @JsonKey(name: "ContractId")
  final String contractId;
  @JsonKey(name: "Phone")
  final String phone;
  @JsonKey(name: "FileId")
  final String fileId;
  @JsonKey(name: "AttachmentFileId")
  final String attachmentFileId;
  @JsonKey(name: "CityId")
  final String cityId;
  @JsonKey(name: "ClinicId")
  final String clinicId;

  Map<String, dynamic> toJson() => _$SendToNextLevelParamToJson(this);


  const SendToNextLevelParam(
      {required this.id,
      required this.state,
      required this.voucherNumber,
      required this.code,
      required this.customerCompanyId,
      required this.submitType,
      required this.personId,
      required this.type,
      required this.contractId,
      required this.phone,
      required this.fileId,
      required this.attachmentFileId,
      required this.cityId,
      required this.clinicId});

  @override
  List<Object?> get props => [
        id,
        state,
        voucherNumber,
        code,
        customerCompanyId,
        customerCompanyId,
        submitType,
        personId,
        type,
        contractId,
        type,
        contractId,
        phone,
        fileId,
        attachmentFileId,
        cityId,
        clinicId
      ];
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voucher_request_get_by_id_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VoucherRequestGetByIdEntities _$VoucherRequestGetByIdEntitiesFromJson(
        Map<String, dynamic> json) =>
    VoucherRequestGetByIdEntities(
      code: (json['Code'] as num).toInt(),
      clinicCityName: json['ClinicCityName'] as String?,
      typeDesc: json['TypeDesc'] as String?,
      personName: json['PersonName'] as String?,
      clinicName: json['ClinicName'] as String?,
      phone: json['Phone'] as String?,
      attachmentFileId: json['AttachmentFileId'] as List<dynamic>?,
      fileId: json['FileId'] as String?,
      voucherNumber: json['VoucherNumber'] as String?,
    );

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_voucher_request_list_records.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonVoucherRequestListRecords _$PersonVoucherRequestListRecordsFromJson(
        Map<String, dynamic> json) =>
    PersonVoucherRequestListRecords(
      voucherNumber: json['VoucherNumber'] as String?,
      personName: json['PersonName'] as String?,
      customerCompanyName: json['CustomerCompanyName'] as String?,
      clinicName: json['ClinicName'] as String?,
      stateDesc: json['StateDesc'] as String?,
      dateInserted: json['DateInserted'] as String?,
      validityEndDate: json['ValidityEndDate'] as String?,
      id: json['Id'] as String?,
      state: (json['State'] as num).toInt(),
      voucherId: json['VoucherId'] as String?,
    );

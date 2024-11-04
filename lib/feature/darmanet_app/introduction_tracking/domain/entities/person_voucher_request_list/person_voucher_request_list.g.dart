// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_voucher_request_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonVoucherRequestListEntities _$PersonVoucherRequestListEntitiesFromJson(
        Map<String, dynamic> json) =>
    PersonVoucherRequestListEntities(
      total: (json['Total'] as num).toInt(),
      records: (json['Records'] as List<dynamic>)
          .map((e) => PersonVoucherRequestListRecords.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      errors: json['Errors'] as String?,
      succeed: json['succeed'] as bool,
      sumResults: json['SumResults'] as List<dynamic>,
    );

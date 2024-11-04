// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_status_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransActionsStatusData _$TransActionsStatusDataFromJson(
        Map<String, dynamic> json) =>
    TransActionsStatusData(
      units: (json['units'] as num).toDouble(),
      value: (json['value'] as num).toDouble(),
      reserved: (json['reserved'] as num).toDouble(),
      maxValueForRequest: (json['maxValueForRequest'] as num).toDouble(),
      redemption: (json['redemption'] as num).toDouble(),
    );

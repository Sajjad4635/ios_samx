// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_cost_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCostResponseData _$CreateCostResponseDataFromJson(
        Map<String, dynamic> json) =>
    CreateCostResponseData(
      succeed: json['succeed'] as bool,
      costItem: CostItem.fromJson(json['costItem'] as Map<String, dynamic>),
      edit: json['edit'] as bool,
      message: json['message'] as String,
      totalCost: (json['TotalCost'] as num).toInt(),
    );

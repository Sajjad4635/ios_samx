// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_category_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FaqCategoryResponseData _$FaqCategoryResponseDataFromJson(
        Map<String, dynamic> json) =>
    FaqCategoryResponseData(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      nameFa: json['nameFa'] as String,
      isActive: json['isActive'] as bool,
      order: (json['order'] as num).toInt(),
      icon: json['icon'] as String?,
    );

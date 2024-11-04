// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_inquiry_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleInquiryResponseData _$VehicleInquiryResponseDataFromJson(
        Map<String, dynamic> json) =>
    VehicleInquiryResponseData(
      id: json['id'] as String,
      title: json['title'] as String,
      isOwner: json['isOwner'] as bool,
      plaque: Plaque.fromJson(json['plaque'] as Map<String, dynamic>),
      vehicle: Vehicle.fromJson(json['vehicle'] as Map<String, dynamic>),
    );

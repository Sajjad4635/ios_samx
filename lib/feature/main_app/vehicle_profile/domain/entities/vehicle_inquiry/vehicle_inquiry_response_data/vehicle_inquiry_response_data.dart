import 'package:ios_samx/feature/main_app/vehicle_profile/domain/entities/vehicle_inquiry/vehicle_inquiry_response_data/plaque/plaque_response_data.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/entities/vehicle_inquiry/vehicle_inquiry_response_data/vehicle/vehicle_response_data.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_inquiry_response_data.g.dart';

@JsonSerializable(createToJson: false)
class VehicleInquiryResponseData extends Equatable{
  final String id;
  final String title;
  final bool isOwner;
  final Plaque plaque;
  final Vehicle vehicle;

  const VehicleInquiryResponseData({
    required this.id,
    required this.title,
    required this.isOwner,
    required this.plaque,
    required this.vehicle,
  });


  factory VehicleInquiryResponseData.fromJson(Map<String, dynamic> json) =>
      _$VehicleInquiryResponseDataFromJson(json);

  @override
  List<Object?> get props => [id,title,isOwner ,plaque , vehicle ];




}





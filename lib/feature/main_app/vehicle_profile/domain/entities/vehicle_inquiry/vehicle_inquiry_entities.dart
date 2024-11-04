import 'package:ios_samx/core/dio/dio_response_samx.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/entities/vehicle_inquiry/vehicle_inquiry_response_data/vehicle_inquiry_response_data.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


@JsonSerializable(createToJson: false)
class VehicleInquiryEntities extends Equatable {
  final DioResponseSamX dioResponseSamX;
  late final VehicleInquiryResponseData vehicleInquiryResponseData;

  VehicleInquiryEntities(this.dioResponseSamX) {
    vehicleInquiryResponseData =
        VehicleInquiryResponseData.fromJson(dioResponseSamX.data!);
  }

  @override
  List<Object?> get props => [dioResponseSamX, vehicleInquiryResponseData];
}

import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_inquiry_param.g.dart';

@JsonSerializable(createFactory: false)
class VehicleInquiryParam extends Equatable {
  final String vehicleId;

  const VehicleInquiryParam({required this.vehicleId});

  Map<String, dynamic> toJson() => _$VehicleInquiryParamToJson(this);

  @override
  List<Object?> get props => [vehicleId];
}

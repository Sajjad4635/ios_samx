import 'package:ios_samx/feature/main_app/vehicle_profile/domain/entities/vehicle/vehicle_response_data/vehicle_response_data.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/dio/dio_response_samx.dart';

@JsonSerializable(createToJson: false)
class VehicleEntities extends Equatable {
  final DioResponseSamX dioResponseSamX;
  late final List<VehicleResponseData> vehicleResponseData = [] ;

  VehicleEntities(this.dioResponseSamX) {
    for (var element in dioResponseSamX.data) {
      vehicleResponseData.add(VehicleResponseData.fromJson(element));
    }
  }

  @override
  List<Object?> get props => [dioResponseSamX, vehicleResponseData];
}

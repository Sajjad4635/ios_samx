import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/entities/vehicle_inspection/vehicle_inspection_response_data/vehicle_inspection_response_data.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../../core/dio/dio_response_lenz.dart';

@JsonSerializable(createToJson: false)
class VehicleInspectionEntities extends Equatable {
  final DioResponseLenz dioResponseLenz;
  late final List<VehicleInspectionResponseData> vehicleInspectionResponseData =[];

  VehicleInspectionEntities(this.dioResponseLenz) {
    for (var element in dioResponseLenz.data) {
      vehicleInspectionResponseData
          .add(VehicleInspectionResponseData.fromJson(element));
    }
  }

  @override
  List<Object?> get props => [dioResponseLenz, vehicleInspectionResponseData];
}

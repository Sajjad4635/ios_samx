import 'package:ios_samx/feature/main_app/vehicle_service/domain/entities/vehicle_dept/vehicle_dept_response_data/vehicle_dept_response_data.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/dio/dio_response_cp.dart';

@JsonSerializable(createToJson: false)
class VehicleDeptEntities extends Equatable {
  final DioResponseCPLife dioResponseCPLife;
  late final VehicleDeptResponseData  vehicleDeptResponseData ;

  VehicleDeptEntities(this.dioResponseCPLife){
    vehicleDeptResponseData = VehicleDeptResponseData.fromJson(dioResponseCPLife.data);
  }

  @override
  List<Object?> get props => [vehicleDeptResponseData];

}
import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/entities/expertise_status/expertise_status_entities.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/usecase/get_process/param/get_process_param.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/usecase/other_vehicle_inspection/param/other_vehicle_inspection_param.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/usecase/vehicle_inspection/param/vehicle_inspection_param.dart';

import '../../domain/entities/create_basic_expertise/create_basic_expertise_entities.dart';
import '../../domain/entities/get_process/get_process_entites.dart';
import '../../domain/entities/vehicle_inspection/vehicle_inspection_entities.dart';
import '../../domain/usecase/create_basic_expertise/param/create_basic_expertise_param.dart';
import '../../domain/usecase/expertise_status/param/expertise_status_param.dart';

abstract class VehicleInspectionRemoteDatasource {
  Future<VehicleInspectionEntities> vehicleInspectionList ({required VehicleInspectionParam vehicleInspectionParam }) ;
  Future<bool> otherVehicleInspection ({required OtherVehicleInspectionParam otherVehicleInspectionParam}) ;
  Future<GetProcessEntities> getProcess ({required GetProcessParam getProcessParam}) ;
  Future<CreateBasicExpertiseEntities> createBasicExpertise({required CreateBasicExpertiseParam createBasicExpertiseParam});
  Future<ExpertiseStatusEntities> expertiseStatus ({required ExpertiseStatusParam expertiseStatusParam }) ;
}

import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/entities/get_process/get_process_entites.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/usecase/get_process/param/get_process_param.dart';
import 'package:either_dart/either.dart';

abstract class GetProcessRepository {
  Future<Either<Failure,GetProcessEntities>> getProcess ({required GetProcessParam getProcessParam});
}
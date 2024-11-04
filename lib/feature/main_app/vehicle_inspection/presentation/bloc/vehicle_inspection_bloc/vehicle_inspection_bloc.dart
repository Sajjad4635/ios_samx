import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/usecase/vehicle_inspection/vehicle_inspection_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';
import '../../../domain/entities/vehicle_inspection/vehicle_inspection_entities.dart';
import '../../../domain/usecase/vehicle_inspection/param/vehicle_inspection_param.dart';

part 'vehicle_inspection_bloc.freezed.dart';
part 'vehicle_inspection_event.dart';
part 'vehicle_inspection_state.dart';

@lazySingleton
@injectable
class VehicleInspectionBloc extends Bloc<VehicleInspectionEvent,VehicleInspectionState>{

  VehicleInspectionUseCase vehicleInspectionUseCase ;
  VehicleInspectionBloc({required this.vehicleInspectionUseCase}) : super (const VehicleInspectionState.initial());

  @override
  Stream<VehicleInspectionState> mapEventToState(VehicleInspectionEvent event) async* {
    yield* event.map(vehicleInspectionEventCalled: (e) async* {
      try {
        yield const VehicleInspectionState.loading();
        final failureOrSuccess =
        await vehicleInspectionUseCase.call(e.vehicleInspectionParam);
        yield failureOrSuccess.fold(
              (failure) => VehicleInspectionState.loadFailure(failure),
              (success) => VehicleInspectionState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield VehicleInspectionState.loadFailure(e);
      }
    });
  }
}
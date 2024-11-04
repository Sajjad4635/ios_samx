import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/usecase/other_vehicle_inspection/other_vehicle_inspection_usecase.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/usecase/other_vehicle_inspection/param/other_vehicle_inspection_param.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';

part 'other_vehicle_inspection_bloc.freezed.dart';
part 'other_vehicle_inspection_event.dart';
part 'other_vehicle_inspection_state.dart';

@lazySingleton
@injectable
class OtherVehicleInspectionBloc extends Bloc<OtherVehicleInspectionEvent,OtherVehicleInspectionState>{

  OtherVehicleInspectionUseCase otherVehicleInspectionUseCase ;
  OtherVehicleInspectionBloc({required this.otherVehicleInspectionUseCase}) : super (const OtherVehicleInspectionState.initial()) ;

  @override
  Stream<OtherVehicleInspectionState> mapEventToState(OtherVehicleInspectionEvent event) async* {
    yield* event.map(otherVehicleInspectionEventCalled: (e) async* {
      try {
        yield const OtherVehicleInspectionState.loading();
        final failureOrSuccess =
        await otherVehicleInspectionUseCase.call(e.otherVehicleInspectionParam);
        yield failureOrSuccess.fold(
              (failure) => OtherVehicleInspectionState.loadFailure(failure),
              (success) => OtherVehicleInspectionState.loadSuccess(),
        );
      } on DioFailure catch (e) {
        yield OtherVehicleInspectionState.loadFailure(e);
      }
    });
  }
}
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/usecase/vehicle/vehicle_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';
import '../../../../../../core/usecases/usecase.dart';
import '../../../domain/entities/vehicle/vehicle_entities.dart';

part 'vehicle_bloc.freezed.dart';
part 'vehicle_event.dart';
part 'vehicle_state.dart';

@lazySingleton
@injectable

class VehicleBloc extends Bloc<VehicleEvent, VehicleState>{
  final VehicleUseCase vehicleUseCase ;
  VehicleBloc({required this.vehicleUseCase}) : super (const VehicleState.initial());


  @override
  Stream<VehicleState> mapEventToState(VehicleEvent event) async* {
    yield* event.map(vehicleEventCalled: (e) async* {
      try {
        yield const VehicleState.loading();
        final failureOrSuccess = await vehicleUseCase.call(e.noParams);
        yield failureOrSuccess.fold(
              (failure) => VehicleState.loadFailure(failure),
              (success) => VehicleState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield VehicleState.loadFailure(e);
      }
    });
  }
}
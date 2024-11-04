import 'package:ios_samx/feature/main_app/vehicle_profile/domain/entities/delete_vehicle/delete_vehicle_entities.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/usecase/delete_vehicle/params/delete_vehicle_param.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';
import '../../../domain/usecase/delete_vehicle/delete_vehicle_usecase.dart';

part 'delete_vehicle_bloc.freezed.dart';

part 'delete_vehicle_event.dart';

part 'delete_vehicle_state.dart';

@lazySingleton
@injectable
class DeleteVehicleBloc extends Bloc<DeleteVehicleEvent, DeleteVehicleState> {
  final DeleteVehicleUseCase deleteVehicleUseCase;

  DeleteVehicleBloc({required this.deleteVehicleUseCase})
      : super(const DeleteVehicleState.initial());

  @override
  Stream<DeleteVehicleState> mapEventToState(DeleteVehicleEvent event) async* {
    yield* event.map(deleteVehicleEventCalled: (e) async* {
      try {
        yield const DeleteVehicleState.loading();
        final failureOrSuccess =
            await deleteVehicleUseCase.call(e.deleteVehicleParam);
        yield failureOrSuccess.fold(
          (failure) => DeleteVehicleState.loadFailure(failure),
          (success) => DeleteVehicleState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield DeleteVehicleState.loadFailure(e);
      }
    });
  }
}

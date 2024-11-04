import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';
import '../../../domain/entities/edit_vehicle/edit_vehicle_entities.dart';
import '../../../domain/usecase/edit_vehicle/edit_vehicle_usecase.dart';
import '../../../domain/usecase/edit_vehicle/params/edit_vehicle_param.dart';

part 'edit_vehicle_bloc.freezed.dart';

part 'edit_vehicle_event.dart';

part 'edit_vehicle_state.dart';

@lazySingleton
@injectable
class EditVehicleBloc extends Bloc<EditVehicleEvent, EditVehicleState> {
  final EditVehicleUseCase editVehicleUseCase;

  EditVehicleBloc({required this.editVehicleUseCase})
      : super(const EditVehicleState.initial());

  @override
  Stream<EditVehicleState> mapEventToState(EditVehicleEvent event) async* {
    yield* event.map(editVehicleEventCalled: (e) async* {
      try {
        yield const EditVehicleState.loading();
        final failureOrSuccess =
            await editVehicleUseCase.call(e.editVehicleParam);
        yield failureOrSuccess.fold(
          (failure) => EditVehicleState.loadFailure(failure),
          (success) => EditVehicleState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield EditVehicleState.loadFailure(e);
      }
    });
  }
}

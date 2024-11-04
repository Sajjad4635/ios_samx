
import 'package:ios_samx/feature/main_app/vehicle_service/domain/entities/vehicle_dept/vehicle_dept_entities.dart';
import 'package:ios_samx/feature/main_app/vehicle_service/domain/usecase/vehicle_dept/params/vehicle_dept_param.dart';
import 'package:ios_samx/feature/main_app/vehicle_service/domain/usecase/vehicle_dept/vehicle_dept_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';

part 'vehicle_dept_bloc.freezed.dart' ;
part 'vehicle_dept_event.dart';
part 'vehicle_dept_state.dart';

@lazySingleton
@injectable

class VehicleDeptBloc extends Bloc<VehicleDeptEvent,VehicleDeptState>{
  final VehicleDeptUseCase vehicleDeptUseCase ;

  VehicleDeptBloc({required this.vehicleDeptUseCase})
      : super(const VehicleDeptState.initial());

  @override
  Stream<VehicleDeptState> mapEventToState(VehicleDeptEvent event) async* {
    yield* event.map(vehicleDeptEventCalled: (e) async* {
      try {
        yield const VehicleDeptState.loading();
        final failureOrSuccess =
        await vehicleDeptUseCase.call(e.vehicleDeptParam);
        yield failureOrSuccess.fold(
              (failure) => VehicleDeptState.loadFailure(failure),
              (success) => VehicleDeptState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield VehicleDeptState.loadFailure(e);
      }
    });
  }
}

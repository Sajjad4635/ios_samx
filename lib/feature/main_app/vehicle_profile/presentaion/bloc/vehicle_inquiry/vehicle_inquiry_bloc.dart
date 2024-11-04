import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';
import '../../../domain/entities/vehicle_inquiry/vehicle_inquiry_entities.dart';
import '../../../domain/usecase/vehicle_inquiry/param/vehicle_inquiry_param.dart';
import '../../../domain/usecase/vehicle_inquiry/vehicle_inquiry_usecase.dart';

part 'vehicle_inquiry_bloc.freezed.dart';

part 'vehicle_inquiry_event.dart';

part 'vehicle_inquiry_state.dart';

@lazySingleton
@injectable
class VehicleInquiryBloc extends Bloc<VehicleInquiryEvent,VehicleInquiryState>{
  final VehicleInquiryUseCase vehicleInquiryUseCase ;

  VehicleInquiryBloc({required this.vehicleInquiryUseCase }) : super (const VehicleInquiryState.initial());

  @override
  Stream<VehicleInquiryState> mapEventToState(VehicleInquiryEvent event) async* {
    yield* event.map(vehicleInquiryEventCalled: (e) async* {
      try {
        yield const VehicleInquiryState.loading();
        final failureOrSuccess =
        await vehicleInquiryUseCase.call(e.vehicleInquiryParam);
        yield failureOrSuccess.fold(
              (failure) => VehicleInquiryState.loadFailure(failure),
              (success) => VehicleInquiryState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield VehicleInquiryState.loadFailure(e);
      }
    });
  }
}



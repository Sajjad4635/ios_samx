import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/entities/get_process/get_process_entites.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/usecase/get_process/param/get_process_param.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';
import '../../../domain/usecase/get_process/get_process_usecase.dart';

part 'get_process_bloc.freezed.dart';

part 'get_process_event.dart';

part 'get_process_state.dart';

@lazySingleton
@injectable
class GetProcessBloc extends Bloc<GetProcessEvent, GetProcessState> {
  GetProcessUseCase getProcessUseCase;

  GetProcessBloc({required this.getProcessUseCase})
      : super(const GetProcessState.initial());

  @override
  Stream<GetProcessState> mapEventToState(GetProcessEvent event) async* {
    yield* event.map(getProcessEventCalled: (e) async* {
      try {
        yield const GetProcessState.loading();
        final failureOrSuccess =
            await getProcessUseCase.call(e.getProcessParam);
        yield failureOrSuccess.fold(
          (failure) => GetProcessState.loadFailure(failure),
          (success) => GetProcessState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield GetProcessState.loadFailure(e);
      }
    });
  }
}



import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/usecase/expertise_status/expertise_status_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';
import '../../../domain/entities/expertise_status/expertise_status_entities.dart';
import '../../../domain/usecase/expertise_status/param/expertise_status_param.dart';

part 'expertise_status_bloc.freezed.dart';
part 'expertise_status_event.dart';
part 'expertise_status_state.dart';

@lazySingleton
@injectable

class ExpertiseStatusBloc extends Bloc<ExpertiseStatusEvent,ExpertiseStatusState>{
  ExpertiseStatusUseCase expertiseStatusUseCase ;

  ExpertiseStatusBloc({required this.expertiseStatusUseCase})
      : super(const ExpertiseStatusState.initial());

  @override
  Stream<ExpertiseStatusState> mapEventToState(
      ExpertiseStatusEvent event) async* {
    yield* event.map(expertiseStatusEventCalled: (e) async* {
      try {
        yield const ExpertiseStatusState.loading();
        final failureOrSuccess =
        await expertiseStatusUseCase.call(e.expertiseStatusParam);
        yield failureOrSuccess.fold(
              (failure) => ExpertiseStatusState.loadFailure(failure),
              (success) => ExpertiseStatusState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield ExpertiseStatusState.loadFailure(e);
      }
    });
  }

}
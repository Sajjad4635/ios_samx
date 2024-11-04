import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/feature/darmanet_app/health_care_centers/domain/use_cases/clinic_search/get_clinic_search_resulut_usecase.dart';
import 'package:ios_samx/feature/darmanet_app/health_care_centers/domain/use_cases/clinic_search/params/get_clinic_search_result_params.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/errors/failures/failure.dart';
import '../../../domain/entities/clinic_search/get_clinic_search_result_entity.dart';

part 'get_clinic_search_result_event.dart';

part 'get_clinic_search_result_state.dart';

part 'get_clinic_search_result_bloc.freezed.dart';

@lazySingleton
@injectable
class GetClinicSearchResultBloc extends Bloc<GetClinicSearchResultEvent, GetClinicSearchResultState> {
  final GetClinicSearchResultUseCase useCase;

  GetClinicSearchResultBloc({required this.useCase})
      : super(const GetClinicSearchResultState.initial());

  @override
  Stream<GetClinicSearchResultState> mapEventToState(
      GetClinicSearchResultEvent event) async* {
    yield* event.map(getClinicSearchCalled: (value) async* {
      try {
        yield const GetClinicSearchResultState.loading();
        final failureOrSuccess = await useCase.call(event.params);
        yield failureOrSuccess.fold(
                (failure) => GetClinicSearchResultState.loadFailure(failure),
                (success) => GetClinicSearchResultState.loadSuccess(success)

        );
      } on DioFailure catch (ex) {
        yield GetClinicSearchResultState.loadFailure(ex);
      }
    },);
  }
}















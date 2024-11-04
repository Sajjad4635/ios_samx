import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';
import '../../../domain/entities/clinics_types/get_all_clinics_entity.dart';
import '../../../domain/use_cases/clinics_types/get_clinics_types_usecase.dart';
import '../../../domain/use_cases/clinics_types/params/get_clinics_types_params.dart';

part 'get_clinics_types_event.dart';
part 'get_clinics_types_state.dart';
part 'get_clinics_types_bloc.freezed.dart';

@lazySingleton
@injectable
class GetClinicsTypesBloc extends Bloc<GetClinicsTypesEvent, GetClinicsTypesState> {
  final GetClinicsTypesUseCase useCase;

  GetClinicsTypesBloc({required this.useCase}) : super(const GetClinicsTypesState.initial());

  @override
  Stream<GetClinicsTypesState> mapEventToState(
      GetClinicsTypesEvent event) async* {
    yield* event.map(
      getClinicsTypesCalled: (value) async* {
        try {
          yield const GetClinicsTypesState.loading();
          final failureOrSuccess = await useCase.call(event.params);
          yield failureOrSuccess.fold(
                  (failure) => GetClinicsTypesState.loadFailure(failure),
                  (success) => GetClinicsTypesState.loadSuccess(success));
        } on DioFailure catch (ex) {
          yield GetClinicsTypesState.loadFailure(ex);
        }
      },
    );
  }



}

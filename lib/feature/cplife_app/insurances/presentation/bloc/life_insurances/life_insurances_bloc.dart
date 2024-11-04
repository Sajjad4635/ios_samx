import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/cplife_app/insurances/domain/entities/life_insurances/life_insurances_response.dart';
import 'package:ios_samx/feature/cplife_app/insurances/domain/usecases/life_insurances/life_insurances_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/core/errors/failures/dio_failure.dart';

part 'life_insurances_bloc.freezed.dart';
part 'life_insurances_event.dart';
part 'life_insurances_state.dart';

@lazySingleton
@injectable
class LifeInsurancesBloc extends Bloc<LifeInsurancesEvent, LifeInsurancesState> {
  final LifeInsurancesUseCase lifeInsurancesUseCase;
  LifeInsurancesBloc({required this.lifeInsurancesUseCase}) : super(const LifeInsurancesState.initial());

  @override
  Stream<LifeInsurancesState> mapEventToState(LifeInsurancesEvent event) async* {
    yield* event.map(lifeInsurancesEventCalled: (e) async* {
      try {
        yield const LifeInsurancesState.loading();
        final failureOrSuccess = await lifeInsurancesUseCase.call(e.params);
        yield failureOrSuccess.fold(
          (failure) => LifeInsurancesState.loadFailure(failure),
          (success) => LifeInsurancesState.loadSuccess(success),
        );
      } on DioFailure catch (failure) {
        yield LifeInsurancesState.loadFailure(failure);
      }
    });
  }
}

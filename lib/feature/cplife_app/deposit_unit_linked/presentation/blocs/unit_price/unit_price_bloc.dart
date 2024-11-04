import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/domain/entities/unit_price/unit_price_response_entity.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/domain/usecases/unit_price/unit_price_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'unit_price_bloc.freezed.dart';
part 'unit_price_state.dart';
part 'unit_price_event.dart';

@lazySingleton
@injectable
class UnitPriceBloc extends Bloc<UnitPriceEvent, UnitPriceState> {
  final UnitPriceUseCase unitPriceUseCase;
  UnitPriceBloc({required this.unitPriceUseCase})
      : super(const UnitPriceState.initial());

  @override
  Stream<UnitPriceState> mapEventToState(
    UnitPriceEvent event,
  ) async* {
    yield* event.map(unitPriceEventCalled: (e) async* {
      try {
        yield const UnitPriceState.loading();
        final failureOrSuccess = await unitPriceUseCase.call(e.noParams);
        yield failureOrSuccess.fold(
          (failure) => UnitPriceState.loadFailure(failure),
          (success) => UnitPriceState.loadSuccess(success),
        );
      } on DioFailure catch (error) {
        yield UnitPriceState.loadFailure(error);
      }
    });
  }
}

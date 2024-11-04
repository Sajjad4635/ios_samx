import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/card_default/card_default_entities.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/card_default/card_default_usecase.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/card_default/params/card_default_param.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';

part 'card_default_bloc.freezed.dart';
part 'card_default_event.dart';
part 'card_default_state.dart';

@lazySingleton
@injectable
class CardDefaultBloc extends Bloc<CardDefaultEvent, CardDefaultState>{

  final CardDefaultUseCase cardDefaultUseCase ;
  CardDefaultBloc({required this.cardDefaultUseCase}) : super (const CardDefaultState.initial());

  @override
  Stream<CardDefaultState> mapEventToState(CardDefaultEvent event) async* {
    yield* event.map(cardDefaultEventCalled: (e) async* {
      try {
        yield const CardDefaultState.loading();
        final failureOrSuccess = await cardDefaultUseCase.call(e.cardDefaultParam);
        yield failureOrSuccess.fold(
              (failure) => CardDefaultState.loadFailure(failure),
              (success) => CardDefaultState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield CardDefaultState.loadFailure(e);
      }
    });
  }
}
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/get_card/get_card_entities.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/get_card/get_card_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';

part 'get_card_bloc.freezed.dart';
part 'get_card_event.dart';
part 'get_card_state.dart';

@lazySingleton
@injectable
class GetCardBloc extends Bloc<GetCardEvent, GetCardState>{

  final GetCardUseCase getCardUseCase ;
  GetCardBloc({required this.getCardUseCase}) : super (const GetCardState.initial());

  @override
  Stream<GetCardState> mapEventToState(GetCardEvent event) async* {
    yield* event.map(getCardEventCalled: (e) async* {
      try {
        yield const GetCardState.loading();
        final failureOrSuccess = await getCardUseCase.call(e.noParams);
        yield failureOrSuccess.fold(
              (failure) => GetCardState.loadFailure(failure),
              (success) => GetCardState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield GetCardState.loadFailure(e);
      }
    });
  }
}
import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/remove_card/remove_card_entities.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/remove_card/params/remove_card_param.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/remove_card/remove_card_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';

part 'remove_card_bloc.freezed.dart';
part 'remove_card_event.dart';
part 'remove_card_state.dart';

@lazySingleton
@injectable
class RemoveCardBloc extends Bloc<RemoveCardEvent, RemoveCardState>{

  final RemoveCardUseCase removeCardUseCase ;
  RemoveCardBloc({required this.removeCardUseCase}) : super (const RemoveCardState.initial());

  @override
  Stream<RemoveCardState> mapEventToState(RemoveCardEvent event) async* {
    yield* event.map(removeCardEventCalled: (e) async* {
      try {
        yield const RemoveCardState.loading();
        final failureOrSuccess = await removeCardUseCase.call(e.removeCardParam);
        yield failureOrSuccess.fold(
              (failure) => RemoveCardState.loadFailure(failure),
              (success) => RemoveCardState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield RemoveCardState.loadFailure(e);
      }
    });
  }
}
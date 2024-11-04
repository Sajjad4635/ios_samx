
import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/update_card_title/update_card_title_entities.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/update_card_title/params/update_card_title_param.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/update_card_title/update_card_title_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';

part 'update_card_title_bloc.freezed.dart';
part 'update_card_title_event.dart';
part 'update_card_title_state.dart';

@lazySingleton
@injectable
class UpdateCardTitleBloc extends Bloc<UpdateCardTitleEvent, UpdateCardTitleState>{

  final UpdateCardTitleUseCase updateCardTitleUseCase ;
  UpdateCardTitleBloc({required this.updateCardTitleUseCase}) : super (const UpdateCardTitleState.initial());

  @override
  Stream<UpdateCardTitleState> mapEventToState(UpdateCardTitleEvent event) async* {
    yield* event.map(updateCardTitleEventCalled: (e) async* {
      try {
        yield const UpdateCardTitleState.loading();
        final failureOrSuccess = await updateCardTitleUseCase.call(e.updateCardTitleParam);
        yield failureOrSuccess.fold(
              (failure) => UpdateCardTitleState.loadFailure(failure),
              (success) => UpdateCardTitleState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield UpdateCardTitleState.loadFailure(e);
      }
    });
  }
}
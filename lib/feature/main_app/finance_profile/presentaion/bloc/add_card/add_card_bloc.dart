import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/add_card/add_card_entities.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/add_card/add_card_usecase.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/add_card/params/add_card_param.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';

part 'add_card_bloc.freezed.dart';
part 'add_card_event.dart';
part 'add_card_state.dart';

@lazySingleton
@injectable
class AddCardBloc extends Bloc<AddCardEvent, AddCardState>{

  final AddCardUseCase addCardUseCase ;
  AddCardBloc({required this.addCardUseCase}) : super (const AddCardState.initial());

  @override
  Stream<AddCardState> mapEventToState(AddCardEvent event) async* {
    yield* event.map(addCardEventCalled: (e) async* {
      try {
        yield const AddCardState.loading();
        final failureOrSuccess = await addCardUseCase.call(e.addCardParam);
        yield failureOrSuccess.fold(
              (failure) => AddCardState.loadFailure(failure),
              (success) => AddCardState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield AddCardState.loadFailure(e);
      }
    });
  }
}
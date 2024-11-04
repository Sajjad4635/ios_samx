import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/entities/saved_money/saved_money_response.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/usecase/saved_money/params/saved_money_param.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/usecase/saved_money/saved_money_usecase.dart';

part 'saved_money_bloc.freezed.dart';
part 'saved_money_event.dart';
part 'saved_money_state.dart';

@lazySingleton
@injectable
class SavedMoneyBloc extends Bloc<SavedMoneyEvent, SavedMoneyState> {
  final SavedMoneyUseCase savedMoneyUseCase;
  SavedMoneyBloc({required this.savedMoneyUseCase}) : super(const SavedMoneyState.initial());

  @override
  Stream<SavedMoneyState> mapEventToState(
    SavedMoneyEvent event,
  ) async* {
    yield* event.map(saveMoneyEventCalled: (e) async* {
      try {
        yield const SavedMoneyState.loading();
        final failureOrSuccess = await savedMoneyUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => SavedMoneyState.loadFailure(failure),
          (success) => SavedMoneyState.loadSuccess(success),
        );
      } on DioFailure catch (error) {
        yield SavedMoneyState.loadFailure(error);
      }
    });
  }
}

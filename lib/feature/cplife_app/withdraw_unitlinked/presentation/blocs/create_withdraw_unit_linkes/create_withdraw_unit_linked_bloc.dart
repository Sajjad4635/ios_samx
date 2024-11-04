import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/cplife_app/withdraw_unitlinked/domain/entities/withdraw_unitlinked/withdraw_unitlinked_entities.dart';
import 'package:ios_samx/feature/cplife_app/withdraw_unitlinked/domain/usecases/withdraw_unit_link_usecase/param/withdraw_unit_linked_param.dart';
import 'package:ios_samx/feature/cplife_app/withdraw_unitlinked/domain/usecases/withdraw_unit_link_usecase/withdraw_unit_link_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_withdraw_unit_linked_bloc.freezed.dart';
part 'create_withdraw_unit_linkes_event.dart';
part 'create_withdraw_unit_linked_state.dart';

@lazySingleton
@injectable
class CreateWithdrawBloc extends Bloc<CreateWithdrawEvent, CreateWithdrawState> {
  final CreateWithdrawUnitLinkedUseCase createWithdrawUnitLinkedUseCase;
  CreateWithdrawBloc({required this.createWithdrawUnitLinkedUseCase}) : super(const CreateWithdrawState.initial());

    @override
  Stream<CreateWithdrawState> mapEventToState(
    CreateWithdrawEvent event,
  ) async* {
    yield* event.map(createWithdrawEventCalled: (e) async* {
      try {
        yield const CreateWithdrawState.loading();
        final failureOrSuccess = await createWithdrawUnitLinkedUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => CreateWithdrawState.loadFailure(failure),
          (success) => CreateWithdrawState.loadSuccess(success),
        );
      } on DioFailure catch (error) {
        yield CreateWithdrawState.loadFailure(error);
      }
    });
  }
}

import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/entities/person_voucher_create/person_voucher_create_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/usecase/person_voucher_create/param/person_voucher_create_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/usecase/person_voucher_create/person_voucher_create_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'person_voucher_create_bloc.freezed.dart';
part 'person_voucher_create_event.dart';
part 'person_voucher_create_state.dart';

@lazySingleton
@injectable
class PersonVoucherCreateBloc
    extends Bloc<PersonVoucherCreateEvent, PersonVoucherCreateState> {
  final PersonVoucherCreateUseCase personVoucherCreateUseCase;

  PersonVoucherCreateBloc({required this.personVoucherCreateUseCase})
      : super(const PersonVoucherCreateState.initial());

  @override
  Stream<PersonVoucherCreateState> mapEventToState(
      PersonVoucherCreateEvent event) async* {
    yield* event.map(personVoucherCreateEventCalled: (e) async* {
      try {
        yield const PersonVoucherCreateState.loading();
        final failureOrSuccess = await personVoucherCreateUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => PersonVoucherCreateState.loadFailure(failure),
          (success) => PersonVoucherCreateState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield PersonVoucherCreateState.loadFailure(e);
      }
    });
  }
}
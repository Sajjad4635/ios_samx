import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/person_voucher_request_list/person_voucher_request_list.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/person_voucher_request_list/param/person_voucher_request_list_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/person_voucher_request_list/person_voucher_request_list_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'person_voucher_request_list_bloc.freezed.dart';
part 'person_voucher_request_list_event.dart';
part 'person_voucher_request_list_state.dart';

@lazySingleton
@injectable
class PersonVoucherRequestListBloc extends Bloc<PersonVoucherRequestListEvent, PersonVoucherRequestListState> {
  final PersonVoucherRequestListUseCase personVoucherRequestListUseCase;
  PersonVoucherRequestListBloc({required this.personVoucherRequestListUseCase}) : super(const PersonVoucherRequestListState.initial());

  @override
  Stream<PersonVoucherRequestListState> mapEventToState(PersonVoucherRequestListEvent event) async* {
    yield* event.map(personVoucherRequestListEventCalled: (e) async* {
      try {
        yield const PersonVoucherRequestListState.loading();
        final failureOrSuccess = await personVoucherRequestListUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => PersonVoucherRequestListState.loadFailure(failure),
          (success) => PersonVoucherRequestListState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield PersonVoucherRequestListState.loadFailure(e);
      } 
    });
  }
}
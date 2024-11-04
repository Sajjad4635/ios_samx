import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/get_active_by_person_for_voucher/get_active_by_person_for_voucher_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/get_active_by_person_for_voucher/get_active_by_person_for_voucher_usecase.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/get_active_by_person_for_voucher/param/get_active_by_person_for_voucher_param.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_active_by_person_for_voucher_bloc.freezed.dart';
part 'get_active_by_person_for_voucher_event.dart';
part 'get_active_by_person_for_voucher_state.dart';

@lazySingleton
@injectable
class GetActiveByPersonForVoucherBloc extends Bloc<GetActiveByPersonForVoucherEvent, GetActiveByPersonForVoucherState> {
  final GetActiveByPersonVoucherUseCase getActiveByPersonVoucherUseCase;
  GetActiveByPersonForVoucherBloc({required this.getActiveByPersonVoucherUseCase}) : super(const GetActiveByPersonForVoucherState.initial());

  @override
  Stream<GetActiveByPersonForVoucherState> mapEventToState(GetActiveByPersonForVoucherEvent event) async* {
    yield* event.map(getActiveByPersonForVoucherEvent: (e) async* {
      try {
        yield const GetActiveByPersonForVoucherState.loading();
        final failureOrSuccess = await getActiveByPersonVoucherUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => GetActiveByPersonForVoucherState.loadFailure(failure),
          (success) => GetActiveByPersonForVoucherState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield GetActiveByPersonForVoucherState.loadFailure(e);
      } 
    });
  }
}
import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/voucher_request_get_by_id/voucher_request_get_by_id_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/voucher_request_get_by_id/param/voucher_request_get_by_id_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/voucher_request_get_by_id/voucher_request_get_by_id_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'voucher_request_get_by_id_bloc.freezed.dart';
part 'voucher_request_get_by_id_event.dart';
part 'voucher_request_get_by_id_state.dart';

@lazySingleton
@injectable
class VoucherRequestGetByIdBloc extends Bloc<VoucherRequestGetByIdEvent, VoucherRequestGetByIdState> {
  final VoucherRequestGetByIdUseCase voucherRequestGetByIdUseCase;
  VoucherRequestGetByIdBloc({required this.voucherRequestGetByIdUseCase}) : super(const VoucherRequestGetByIdState.initial());

  @override
  Stream<VoucherRequestGetByIdState> mapEventToState(VoucherRequestGetByIdEvent event) async* {
    yield* event.map(voucherRequestGetByIdEventCalled: (e) async* {
      try {
        yield const VoucherRequestGetByIdState.loading();
        final failureOrSuccess = await voucherRequestGetByIdUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => VoucherRequestGetByIdState.loadFailure(failure),
          (success) => VoucherRequestGetByIdState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield VoucherRequestGetByIdState.loadFailure(e);
      } 
    });
  }
}
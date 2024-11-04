import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/voucher_report/voucher_report_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/voucher_report/param/voucher_report_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/voucher_report/voucher_report_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'voucher_report_bloc.freezed.dart';
part 'voucher_report_event.dart';
part 'voucher_report_state.dart';

@lazySingleton
@injectable
class VoucherReportBloc extends Bloc<VoucherReportEvent, VoucherReportState> {
  final VoucherReportUseCase voucherReportUseCase;
  VoucherReportBloc({required this.voucherReportUseCase}) : super(const VoucherReportState.initial());

  @override
  Stream<VoucherReportState> mapEventToState(VoucherReportEvent event) async* {
    yield* event.map(voucherReportEvent: (e) async* {
      try {
        yield const VoucherReportState.loading();
        final failureOrSuccess = await voucherReportUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => VoucherReportState.loadFailure(failure),
          (success) => VoucherReportState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield VoucherReportState.loadFailure(e);
      } 
    });
  }
}
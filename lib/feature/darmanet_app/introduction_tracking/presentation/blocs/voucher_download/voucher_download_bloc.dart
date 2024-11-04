
import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/voucher_download/voucher_download_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/voucher_download/param/voucher_download_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/voucher_download/voucher_download_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'voucher_download_bloc.freezed.dart';
part 'voucher_download_event.dart';
part 'voucher_download_state.dart';

@lazySingleton
@injectable
class VoucherDownloadBloc extends Bloc<VoucherDownloadEvent, VoucherDownloadState> {
  final VoucherDownloadUseCase voucherDownloadUseCase;
  VoucherDownloadBloc({required this.voucherDownloadUseCase}) : super(const VoucherDownloadState.initial());

  @override
  Stream<VoucherDownloadState> mapEventToState(VoucherDownloadEvent event) async* {
    yield* event.map(voucherDownloadEvent: (e) async* {
      try {
        yield const VoucherDownloadState.loading();
        final failureOrSuccess = await voucherDownloadUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => VoucherDownloadState.loadFailure(failure),
          (success) => VoucherDownloadState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield VoucherDownloadState.loadFailure(e);
      } 
    });
  }
}
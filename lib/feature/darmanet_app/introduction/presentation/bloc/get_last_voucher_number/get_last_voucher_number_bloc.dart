
import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/entities/get_last_voucher_number/get_last_voucher_number_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/usecase/get_last_voucher_number/get_last_voucher_number_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_last_voucher_number_bloc.freezed.dart';
part 'get_last_voucher_number_event.dart';
part 'get_last_voucher_number_state.dart';

@lazySingleton
@injectable
class GetLastVoucherNumberBloc extends Bloc<GetLastVoucherNumberEvent, GetLastVoucherNumberState> {
  final GetLastVoucherNumberUseCase getLastVoucherNumberUseCase;
  GetLastVoucherNumberBloc({required this.getLastVoucherNumberUseCase}) : super(const GetLastVoucherNumberState.initial());

  @override
  Stream<GetLastVoucherNumberState> mapEventToState(GetLastVoucherNumberEvent event) async* {
    yield* event.map(getLastVoucherNumberEventCalled: (e) async* {
      try {
        yield const GetLastVoucherNumberState.loading();
        final failureOrSuccess = await getLastVoucherNumberUseCase.call(e.noParams);
        yield failureOrSuccess.fold(
          (failure) => GetLastVoucherNumberState.loadFailure(failure),
          (success) => GetLastVoucherNumberState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield GetLastVoucherNumberState.loadFailure(e);
      }
    });
  }
}
import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/usecase/iban_inquiry/params/iban_inquiry_param.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/usecase/iban_inquiry/iban_inquiry_usecase.dart';
import '../../../domain/entities/iban_inquiry/iban_inquiry_response.dart';

part 'iban_inquiry_bloc.freezed.dart';
part 'iban_inquiry_state.dart';
part 'iban_inquiry_event.dart';

@lazySingleton
@injectable
class IbanInquiryBloc extends Bloc<IbanInquiryEvent, IbanInquiryState> {
  final IbanInquiryUseCase ibanInquiryUseCase;
  IbanInquiryBloc({required this.ibanInquiryUseCase}) : super(const IbanInquiryState.initial());

    @override
  Stream<IbanInquiryState> mapEventToState(
    IbanInquiryEvent event,
  ) async* {
    yield* event.map(ibanInquiryEventCalled: (e) async* {
      try {
        yield const IbanInquiryState.loading();
        final failureOrSuccess = await ibanInquiryUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => IbanInquiryState.loadFailure(failure),
          (success) => IbanInquiryState.loadSuccess(success),
        );
      } on DioFailure catch (error) {
        yield IbanInquiryState.loadFailure(error);
      }
    });
  }
}

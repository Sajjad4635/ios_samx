import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import '../../../domain/entities/payment_verify/payment_verify_response_entity.dart';
import '../../../domain/usecases/payment_verify/params/payment_verify_params.dart';
import '../../../domain/usecases/payment_verify/payment_verify_usecase.dart';
part 'payment_verify_event.dart';
part 'payment_verify_state.dart';
part 'payment_verify_bloc.freezed.dart';

// test

@lazySingleton
@injectable
class PaymentVerifyBloc extends Bloc<PaymentVerifyEvent, PaymentVerifyState> {

  final PaymentVerifyUseCase useCase ;
  PaymentVerifyBloc({required this.useCase}):super(const PaymentVerifyState.initial());

  @override
  Stream<PaymentVerifyState> mapEventToState(PaymentVerifyEvent event) async*{

    yield* event.map(paymentVerifyEventCalled: (e) async* {
      try{
        yield const PaymentVerifyState.loading() ;
        final failureOrSuccess = await useCase.call(e.params);
        failureOrSuccess.fold(
                (left) => PaymentVerifyState.loadFailure(left),
                (right) => PaymentVerifyState.loadSuccess(right)
        );
      } on DioFailure catch (ex){
        yield PaymentVerifyState.loadFailure(ex);
      }


    } );

  }
}

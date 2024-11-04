import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/send_otp/send_otp_response_entity.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/send_otp/params/send_otp_params.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/send_otp/send_otp_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
part 'send_otp_event.dart';
part 'send_otp_state.dart';
part 'send_otp_bloc.freezed.dart';


@lazySingleton
@injectable
class SendOtpBloc extends Bloc<SendOtpEvent, SendOtpState> {

  final SendOtpUseCase useCase ;
  SendOtpBloc({required this.useCase}):super(const SendOtpState.initial());

  @override
  Stream<SendOtpState> mapEventToState(SendOtpEvent event) async*{

    yield* event.map(sendOtpEventCalled: (e) async* {
      try{
        yield const SendOtpState.loading() ;
        final failureOrSuccess = await useCase.call(e.params);
        failureOrSuccess.fold(
                (left) => SendOtpState.loadFailure(left),
                (right) => SendOtpState.loadSuccess(right)
        );
      } on DioFailure catch (ex){
        yield SendOtpState.loadFailure(ex);
      }


    } );

  }
}

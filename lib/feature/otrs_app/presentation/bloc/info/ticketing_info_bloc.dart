
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import '../../../../../core/errors/failures/failure.dart';
import '../../../domain/entity/info/ticket_info_response_entity.dart';
import '../../../domain/usecase/info/params/ticketing_info_params.dart';
import '../../../domain/usecase/info/ticketing_info_usecase.dart';

part 'ticketing_info_bloc.freezed.dart';
part 'ticketing_info_event.dart';
part 'ticketing_info_state.dart';

@lazySingleton
@injectable
class TicketingInfoBloc extends Bloc<TicketingInfoEvent, TicketingInfoState> {

  final TicketingInfoUseCase usecase ;

  TicketingInfoBloc({required this.usecase}): super(const TicketingInfoState.initial());

  @override
  Stream <TicketingInfoState> mapEventToState(TicketingInfoEvent event) async* {

    yield* event.map(ticketingInfoEventCalled: (e) async* {
      try{

        yield const TicketingInfoState.loading();
        final failureOrSuccess = await usecase.call(e.params);
        yield failureOrSuccess.fold(
          (left) => TicketingInfoState.loadFailure(left),
          (right) => TicketingInfoState.loadSuccess(right)
          );

      }on DioFailure catch (error){
        yield TicketingInfoState.loadFailure(error);
      }

    });
  }
  




}
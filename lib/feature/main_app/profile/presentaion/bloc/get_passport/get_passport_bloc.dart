import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/profile/domain/entities/get_passport/get_passport_entities.dart';
import 'package:ios_samx/feature/main_app/profile/domain/usecase/get_passport/get_passport_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';
part 'get_passport_bloc.freezed.dart';
part 'get_passport_event.dart';
part 'get_passport_state.dart';

@lazySingleton
@injectable

class GetPassportBloc extends Bloc<GetPassportEvent, GetPassportState>{
  final GetPassportUseCase getPassportUseCase ;

  GetPassportBloc({required this.getPassportUseCase}) :super (const GetPassportState.initial());


  @override
  Stream<GetPassportState> mapEventToState(GetPassportEvent event) async* {
    yield* event.map(getPassportEventCalled: (e) async* {
      try{
        yield const GetPassportState.loading();
        final failureOrSuccess = await getPassportUseCase.call(e.noParams);
        yield failureOrSuccess.fold(
              (failure) => GetPassportState.loadFailure(failure),
              (success) => GetPassportState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield GetPassportState.loadFailure(e);
      }
    });
  }
}
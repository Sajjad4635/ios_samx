import 'package:ios_samx/feature/main_app/profile/domain/entities/update_passport/update_passport_entities.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';
import '../../../domain/usecase/update_passport/update_passport_usecase.dart';
import 'package:ios_samx/feature/main_app/profile/domain/usecase/update_passport/param/update_passport_param.dart';

part 'update_passport_bloc.freezed.dart';
part 'update_passport_event.dart';
part 'update_passport_state.dart';


@lazySingleton
@injectable


class UpdatePassportBloc extends Bloc<UpdatePassportEvent, UpdatePassportState>{
   final UpdatePassportUseCase updatePassportUseCase;

   UpdatePassportBloc({required this.updatePassportUseCase}) :super (const UpdatePassportState.initial());

  @override
  Stream<UpdatePassportState> mapEventToState(UpdatePassportEvent event) async* {
    yield* event.map(updatePassportEventCalled: (e) async* {
      try{
        yield const UpdatePassportState.loading();
        final failureOrSuccess = await updatePassportUseCase.call(e.updatePassportParam);
        yield failureOrSuccess.fold(
              (failure) => UpdatePassportState.loadFailure(failure),
              (success) => UpdatePassportState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield UpdatePassportState.loadFailure(e);
      }
    });
  }
}
import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/sso/domain/entities/get_profile_activation/get_profile_activation_entities.dart';
import 'package:ios_samx/feature/main_app/sso/domain/usecase/profile_activation/get_profile_activation_usecase.dart';
import 'package:ios_samx/feature/main_app/sso/domain/usecase/profile_activation/param/get_profile_activation_param.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'profile_activation_bloc.freezed.dart';
part 'profile_activation_event.dart';
part 'profile_activation_state.dart';

@lazySingleton
@injectable
class GetProfileActivationBloc
    extends Bloc<GetProfileActivationEvent, GetProfileActivationState> {
  final GetProfileActivationUseCase getProfileActivationUseCase;

  GetProfileActivationBloc({required this.getProfileActivationUseCase})
      : super(const GetProfileActivationState.initial());

  @override
  Stream<GetProfileActivationState> mapEventToState(
      GetProfileActivationEvent event) async* {
    yield* event.map(getGetProfileActivationEventCalled:  (e) async* {
      try {
        yield const GetProfileActivationState.loading();
        final failureOrSuccess =
            await getProfileActivationUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => GetProfileActivationState.loadFailure(failure),
          (success) => GetProfileActivationState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield GetProfileActivationState.loadFailure(e);
      }
    });
  }
}

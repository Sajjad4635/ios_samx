import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/destory/destory_usecase.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/destory/param/destroy_param.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';

part 'destroy_bloc.freezed.dart';

part 'destroy_state.dart';

part 'destroy_event.dart';

@lazySingleton
@injectable
class DestroyBloc extends Bloc<DestroyEvent, DestroyState> {
  final DestroyUseCase destroyUseCase;

  DestroyBloc({required this.destroyUseCase})
      : super(const DestroyState.initial());

  @override
  Stream<DestroyState> mapEventToState(DestroyEvent event) async* {
    yield* event.map(destroyEventCalled: (e) async* {
      try {
        yield const DestroyState.loading();
        final failureOrSuccess = await destroyUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => DestroyState.loadFailure(failure),
          (success) => DestroyState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield DestroyState.loadFailure(e);
      }
    });
  }
}

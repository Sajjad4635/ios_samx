import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/splash/domain/entities/last_version/last_version_response_entity.dart';
import 'package:ios_samx/feature/main_app/splash/domain/usecases/param/get_last_version/get_last_version_param.dart';
import 'package:ios_samx/feature/main_app/splash/domain/usecases/param/get_last_version/get_last_version_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_last_version_event.dart';
part 'get_last_version_state.dart';
part 'get_last_version_bloc.freezed.dart';

@lazySingleton
@injectable
class GetLastVersionBloc
    extends Bloc<GetLastVersionEvent, GetLastVersionState> {
  final GetLastVersionUseCase getLastVersionUseCase;
  GetLastVersionBloc({required this.getLastVersionUseCase})
      : super(const GetLastVersionState.initial());

  @override
  Stream<GetLastVersionState> mapEventToState(
      GetLastVersionEvent event) async* {
    yield* event.map(getLastVersionEventCalled: (e) async* {
      try {
        yield const GetLastVersionState.loading();
        final failureOrSuccess = await getLastVersionUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => GetLastVersionState.loadFailure(failure),
          (success) => GetLastVersionState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield GetLastVersionState.loadFailure(e);
      }
    });
  }
}

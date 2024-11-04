import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/relative/get_relative_entities.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/get_relative_list/get_relative_usecase.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/get_relative_list/params/get_relatives_params.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_relative_event.dart';
part 'get_relative_state.dart';
part 'get_relative_bloc.freezed.dart';

@lazySingleton
@injectable
class GetRelativeBloc extends Bloc<GetRelativeEvent, GetRelativeState> {
  final GetRelativeListUseCase getRelativeListUseCase;

  GetRelativeBloc(this.getRelativeListUseCase)
      : super(const GetRelativeState.initial());

  @override
  Stream<GetRelativeState> mapEventToState(GetRelativeEvent event) async* {
    yield* event.map(getRelativesEventCalled: (e) async* {
      try {
        yield const GetRelativeState.loading();
        final failureOrSuccess = await getRelativeListUseCase.call(e.params);
        yield failureOrSuccess.fold(
          (failure) => GetRelativeState.loadFailure(failure),
          (success) => GetRelativeState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield GetRelativeState.loadFailure(e);
      }
    });
  }
}

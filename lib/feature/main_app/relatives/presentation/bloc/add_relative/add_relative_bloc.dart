import 'package:ios_samx/feature/main_app/relatives/domain/entities/add_relative/add_relative_entities.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/add_relative/add_relative_usecase.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/add_relative/params/add_relative_param.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';

part 'add_relative_bloc.freezed.dart';

part 'add_relative_event.dart';

part 'add_relative_state.dart';

@lazySingleton
@injectable
class AddRelativeBloc extends Bloc<AddRelativeEvent, AddRelativeState> {
  final AddRelativeUseCase addRelativeUseCase;

  AddRelativeBloc({required this.addRelativeUseCase})
      : super(const AddRelativeState.initial());

  @override
  Stream<AddRelativeState> mapEventToState(
      AddRelativeEvent event) async* {
    yield* event.map(addRelativeEventCalled: (e) async* {
      try {
        yield const AddRelativeState.loading();
        final failureOrSuccess = await addRelativeUseCase.call(e.addRelativeParam);
        yield failureOrSuccess.fold(
              (failure) => AddRelativeState.loadFailure(failure),
              (success) => AddRelativeState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield AddRelativeState.loadFailure(e);
      }
    });
  }
}

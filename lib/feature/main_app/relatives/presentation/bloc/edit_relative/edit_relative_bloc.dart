import 'package:ios_samx/feature/main_app/relatives/domain/entities/edit_relative/edit_relative_entities.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/edit_relative/edit_relative_usecase.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/edit_relative/params/edit_relative_param.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';

part 'edit_relative_bloc.freezed.dart';

part 'edit_relative_event.dart';

part 'edit_relative_state.dart';

@lazySingleton
@injectable
class EditRelativeBloc extends Bloc<EditRelativeEvent, EditRelativeState> {
  final EditRelativeUseCase editRelativeUseCase;

  EditRelativeBloc({required this.editRelativeUseCase})
      : super(const EditRelativeState.initial());

  @override
  Stream<EditRelativeState> mapEventToState(
      EditRelativeEvent event) async* {
    yield* event.map(editRelativeEventCalled: (e) async* {
      try {
        yield const EditRelativeState.loading();
        final failureOrSuccess = await editRelativeUseCase.call(e.editRelativeParam);
        yield failureOrSuccess.fold(
              (failure) => EditRelativeState.loadFailure(failure),
              (success) => EditRelativeState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield EditRelativeState.loadFailure(e);
      }
    });
  }
}

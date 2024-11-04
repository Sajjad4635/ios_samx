import 'package:ios_samx/feature/main_app/relatives/domain/entities/delete_relative/delete_relative_entities.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/delete_relative/delete_relative_usecase.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/delete_relative/params/delete_relative_param.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';

part 'delete_relative_bloc.freezed.dart';

part 'delete_relative_event.dart';

part 'delete_relative_state.dart';

@lazySingleton
@injectable
class DeleteRelativeBloc extends Bloc<DeleteRelativeEvent, DeleteRelativeState> {
  final DeleteRelativeUseCase deleteRelativeUseCase;

  DeleteRelativeBloc({required this.deleteRelativeUseCase})
      : super(const DeleteRelativeState.initial());

  @override
  Stream<DeleteRelativeState> mapEventToState(
      DeleteRelativeEvent event) async* {
    yield* event.map(deleteRelativeEventCalled: (e) async* {
      try {
        yield const DeleteRelativeState.loading();
        final failureOrSuccess = await deleteRelativeUseCase.call(e.deleteRelativeParam);
        yield failureOrSuccess.fold(
              (failure) => DeleteRelativeState.loadFailure(failure),
              (success) => DeleteRelativeState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield DeleteRelativeState.loadFailure(e);
      }
    });
  }
}

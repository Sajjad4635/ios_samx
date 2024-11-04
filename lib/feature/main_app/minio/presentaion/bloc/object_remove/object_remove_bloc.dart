import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';
import '../../../domain/entities/object_remove/object_remove_entities.dart';
import '../../../domain/usecase/object_remove/object_remove_usecase.dart';
import '../../../domain/usecase/object_remove/param/object_remove_param.dart';

part 'object_remove_event.dart';

part 'object_remove_state.dart';

part 'object_remove_bloc.freezed.dart';

@lazySingleton
@injectable
class ObjectRemoveBloc extends Bloc<ObjectRemoveEvent, ObjectRemoveState> {

  final ObjectRemoveUseCase objectRemoveUseCase ;
  ObjectRemoveBloc({required this.objectRemoveUseCase}) : super (const ObjectRemoveState.initial());

  @override
  Stream<ObjectRemoveState> mapEventToState(ObjectRemoveEvent event) async* {
    yield* event.map(objectRemoveEventCalled: (e) async* {
      try {
        yield const ObjectRemoveState.loading();
        final failureOrSuccess = await objectRemoveUseCase.call(e.objectRemoveParam);
        yield failureOrSuccess.fold(
              (failure) => ObjectRemoveState.loadFailure(failure),
              (success) => ObjectRemoveState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield ObjectRemoveState.loadFailure(e);
      }
    });
  }


}

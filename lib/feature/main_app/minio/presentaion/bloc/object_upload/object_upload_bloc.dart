import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';
import '../../../domain/entities/object_upload/object_upload_entities.dart';
import '../../../domain/usecase/object_upload/param/object_upload_param.dart';
import '../../../domain/usecase/object_upload/object_upload_usecase.dart';

part 'object_upload_bloc.freezed.dart';

part 'object_upload_event.dart';

part 'object_upload_state.dart';

@lazySingleton
@injectable
class ObjectUploadBloc extends Bloc<ObjectUploadEvent, ObjectUploadState> {
  final ObjectUploadUseCase objectUploadUseCase;

  ObjectUploadBloc({required this.objectUploadUseCase}): super(const ObjectUploadState.initial());

  @override
  Stream<ObjectUploadState> mapEventToState(ObjectUploadEvent event) async* {
    yield* event.map(objectUploadEventCalled: (e) async* {
      try {
        yield const ObjectUploadState.loading();
        final failureOrSuccess = await objectUploadUseCase.call(e.objectUploadParam);
        yield failureOrSuccess.fold(
              (failure) => ObjectUploadState.loadFailure(failure),
              (success) => ObjectUploadState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield ObjectUploadState.loadFailure(e);
      }
    });
  }
}

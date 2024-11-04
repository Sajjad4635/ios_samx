import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/upload/upload_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/upload/param/upload_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/upload/upload_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'upload_bloc.freezed.dart';
part 'upload_event.dart';
part 'upload_state.dart';

@lazySingleton
@injectable
class UploadBloc extends Bloc<UploadEvent, UploadState> {
  final UploadUseCase uploadUseCase;
  UploadBloc({required this.uploadUseCase}) : super(const UploadState.initial());
  @override
  Stream<UploadState> mapEventToState(UploadEvent event) async* {
    yield* event.map(uploadEventCalled: (e) async* {
      try {
        yield const UploadState.loading();
        final failureOrSuccess = await uploadUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => UploadState.loadFailure(failure),
          (success) => UploadState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield UploadState.loadFailure(e);
      }
    });
  }
}


import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/upload_person_cost_image/upload_person_cost_image_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/upload_person_cost_image/param/upload_person_cost_image_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/upload_person_cost_image/upload_person_cost_image_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'upload_person_cost_image_bloc.freezed.dart';
part 'upload_person_cost_image_event.dart';
part 'upload_person_cost_image_state.dart';

@lazySingleton
@injectable
class UploadPersonCostImageBloc extends Bloc<UploadPersonCostImageEvent, UploadPersonCostImageState> {
  final UploadPersonCostImageUseCase uploadPersonCostImageUseCase;
  UploadPersonCostImageBloc({required this.uploadPersonCostImageUseCase}) : super(const UploadPersonCostImageState.initial());
  @override
  Stream<UploadPersonCostImageState> mapEventToState(UploadPersonCostImageEvent event) async* {
    yield* event.map(uploadPersonCostImageEventCalled: (e) async* {
      try {
        yield const UploadPersonCostImageState.loading();
        final failureOrSuccess = await uploadPersonCostImageUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => UploadPersonCostImageState.loadFailure(failure),
          (success) => UploadPersonCostImageState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield UploadPersonCostImageState.loadFailure(e);
      }
    });
  }
}

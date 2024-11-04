import 'package:ios_samx/feature/main_app/vehicle_profile/domain/entities/post_vehicle/post_vehicle_entities.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/usecase/post_vehicle/params/post_vehicle_param.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/usecase/post_vehicle/post_vehicle_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';

part 'post_vehicle_bloc.freezed.dart';
part 'post_vehicle_event.dart';
part 'post_vehicle_state.dart';

@lazySingleton
@injectable
class PostVehicleBloc  extends  Bloc<PostVehicleEvent, PostVehicleState> {
  final PostVehicleUseCase postVehicleUseCase ;

  PostVehicleBloc({required this.postVehicleUseCase}) : super (const PostVehicleState.initial());

  @override
  Stream<PostVehicleState> mapEventToState(PostVehicleEvent event) async* {
    yield* event.map(postVehicleEventCalled: (e) async* {
      try {
        yield const PostVehicleState.loading();
        final failureOrSuccess =
        await postVehicleUseCase.call(e.postVehicleParam);
        yield failureOrSuccess.fold(
              (failure) => PostVehicleState.loadFailure(failure),
              (success) => PostVehicleState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield PostVehicleState.loadFailure(e);
      }
    });
  }

}

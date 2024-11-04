part of 'post_vehicle_bloc.dart';

@freezed
class PostVehicleState  with _$PostVehicleState {
  const factory PostVehicleState.initial() = _PostVehicleStateInitial ;
  const factory PostVehicleState.loadFailure(Failure failure ) = _PostVehicleStateLoadFailure;
  const factory PostVehicleState.loading() = PostVehicleStateLoading ;
  const factory PostVehicleState.loadSuccess (PostVehicleEntities postVehicleEntities) = _PostVehicleStateLoadSuccess ;
}
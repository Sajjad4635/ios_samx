part of 'upload_person_cost_image_bloc.dart';

@freezed
class UploadPersonCostImageState with _$UploadPersonCostImageState {
  const factory UploadPersonCostImageState.initial() = _UploadPersonCostImageStateInitial;
  const factory UploadPersonCostImageState.loadFailure(Failure failure) = _UploadPersonCostImageStateLoadFailure;
  const factory UploadPersonCostImageState.loading() = UploadPersonCostImageStateLoading;
  const factory UploadPersonCostImageState.loadSuccess(UploadPersonCostImageEntities uploadPersonCostImageEntities) =
      _UploadPersonCostImageStateLoadSuccess;
}
part of 'upload_person_cost_image_bloc.dart';

@freezed
abstract class UploadPersonCostImageEvent with _$UploadPersonCostImageEvent {
  const factory UploadPersonCostImageEvent.uploadPersonCostImageEventCalled({required UploadPersonCostImageParam param}) =
      _UploadPersonCostImageEventCalled;
}
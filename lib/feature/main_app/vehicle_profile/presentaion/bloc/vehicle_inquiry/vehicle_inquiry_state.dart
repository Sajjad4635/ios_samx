part of 'vehicle_inquiry_bloc.dart' ;

@freezed
class VehicleInquiryState with _$VehicleInquiryState {
  const factory VehicleInquiryState.initial() = _VehicleInquiryStateInitial ;
  const factory VehicleInquiryState.loadFailure(Failure failure ) = _VehicleInquiryStateLoadFailure;
  const factory VehicleInquiryState.loading() = VehicleInquiryStateLoading ;
  const factory VehicleInquiryState.loadSuccess (VehicleInquiryEntities vehicleInquiryEntities) = _VehicleInquiryStateLoadSuccess ;
}
part of 'vehicle_inquiry_bloc.dart' ;

@freezed
abstract class VehicleInquiryEvent with _$VehicleInquiryEvent {
  const factory VehicleInquiryEvent.vehicleInquiryEventCalled({required VehicleInquiryParam vehicleInquiryParam}) = _VehicleInquiryEventCalled ;
}
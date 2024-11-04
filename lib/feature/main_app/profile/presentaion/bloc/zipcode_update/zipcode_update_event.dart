part of 'zipcode_update_bloc.dart';

@freezed
class ZipcodeUpdateEvent with _$ZipcodeUpdateEvent {
  const factory ZipcodeUpdateEvent.zipcodeUpdateEventCalled({required ZipcodeUpdateParam zipcodeUpdateParam}) = _ZipcodeDetailEventCalled;
}
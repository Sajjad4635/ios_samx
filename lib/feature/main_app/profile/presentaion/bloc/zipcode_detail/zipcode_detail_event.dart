part of 'zipcode_detail_bloc.dart';

@freezed
class ZipcodeDetailEvent with _$ZipcodeDetailEvent {
  const factory ZipcodeDetailEvent.getZipcodeDetailEventCalled({required ZipcodeDetailParam zipcodeDetailParam}) = _ZipcodeDetailEventCalled;
}

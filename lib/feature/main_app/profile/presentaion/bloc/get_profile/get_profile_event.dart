part of 'get_profile_bloc.dart';

@freezed
abstract class GetProfileEvent with _$GetProfileEvent {
  const factory GetProfileEvent.getProfileEventCalled({required NoParams noParams}) = _GetProfileEventCalled;
}

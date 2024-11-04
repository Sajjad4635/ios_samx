part of 'profile_activation_bloc.dart';

@freezed
abstract class GetProfileActivationEvent with _$GetProfileActivationEvent {
  const factory GetProfileActivationEvent.getGetProfileActivationEventCalled(
          {required GetProfileActivationParam param}) =
      _GetGetProfileActivationEventCalled;
}

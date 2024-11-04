part of 'create_basic_expertise_bloc.dart';

@freezed
abstract class CreateBasicExpertiseEvent with _$CreateBasicExpertiseEvent {
  const factory CreateBasicExpertiseEvent.createBasicExpertiseEventCalled({required CreateBasicExpertiseParam createBasicExpertiseParam}) = _CreateBasicExpertiseEventCalled ;
}

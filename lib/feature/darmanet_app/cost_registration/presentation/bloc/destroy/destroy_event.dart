part of 'destroy_bloc.dart';

@freezed
abstract class DestroyEvent with _$DestroyEvent {
  const factory DestroyEvent.destroyEventCalled({required DestroyParam param}) = _DestroyEventCalled ;


}

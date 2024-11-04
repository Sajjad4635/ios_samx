
part of 'object_remove_bloc.dart' ;

@freezed
abstract class ObjectRemoveEvent with _$ObjectRemoveEvent {
  const factory ObjectRemoveEvent.objectRemoveEventCalled(ObjectRemoveParam objectRemoveParam ) = _ObjectRemoveEventCalled ;
}
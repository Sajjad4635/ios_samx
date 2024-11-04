part of 'add_relative_bloc.dart';

@freezed
abstract class AddRelativeEvent with _$AddRelativeEvent {
  const factory AddRelativeEvent.addRelativeEventCalled({required AddRelativeParam addRelativeParam}) = _AddRelativeEventCalled;
}
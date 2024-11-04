part of 'delete_relative_bloc.dart';

@freezed
abstract class DeleteRelativeEvent with _$DeleteRelativeEvent {
  const factory DeleteRelativeEvent.deleteRelativeEventCalled({required DeleteRelativeParam deleteRelativeParam}) = _DeleteRelativeEventCalled;
}
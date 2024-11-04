

part of 'edit_relative_bloc.dart';


@freezed
abstract class EditRelativeEvent with _$EditRelativeEvent {
  const factory EditRelativeEvent.editRelativeEventCalled({required EditRelativeParam editRelativeParam}) = _EditRelativeEventCalled;
}
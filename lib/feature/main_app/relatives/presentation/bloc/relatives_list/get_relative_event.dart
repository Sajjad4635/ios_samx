part of 'get_relative_bloc.dart';

@freezed
abstract class GetRelativeEvent with _$GetRelativeEvent {
  const factory GetRelativeEvent.getRelativesEventCalled(
      {required GetRelativesParams params}) = _RelativesEventCalled;
}

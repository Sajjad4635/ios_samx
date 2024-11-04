part of 'get_by_id_bloc.dart';

@freezed
abstract class GetByIdEvent with _$GetByIdEvent {
  const factory GetByIdEvent.getByIdEventCalled({required GetByIdParam param}) =
      _GetByIdEventCalled;
}

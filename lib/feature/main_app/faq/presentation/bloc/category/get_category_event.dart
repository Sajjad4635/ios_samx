part of 'get_category_bloc.dart';

@freezed
abstract class GetCategoryEvent with _$GetCategoryEvent {
  const factory GetCategoryEvent.getCategoryEventCalled(
      {required NoParams noParams}) = _GetCategoryEventCalled;
}

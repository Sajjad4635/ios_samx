part of 'get_category_bloc.dart';

@freezed
class GetCategoryState with _$GetCategoryState {
  const factory GetCategoryState.initial() = _GetCategoryStateInitial ;
  const factory GetCategoryState.loadFailure(Failure failure ) = _GetCategoryStateLoadFailure;
  const factory GetCategoryState.loading() = GetCategoryStateLoading ;
  const factory GetCategoryState.loadSuccess (GetCategoryEntities getCategoryEntities) = _GetCategoryStateLoadSuccess ;


}

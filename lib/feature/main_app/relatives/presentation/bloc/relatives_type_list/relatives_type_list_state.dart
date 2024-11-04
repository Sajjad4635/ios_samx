

part of 'relatives_type_list_bloc.dart';


@freezed
class RelativesTypeListState with _$RelativesTypeListState {
  const factory RelativesTypeListState.initial() = _RelativesTypeListStateInitial ;
  const factory RelativesTypeListState.loadFailure(Failure failure ) = _RelativesTypeListStateLoadFailure;
  const factory RelativesTypeListState.loading() = RelativesTypeListStateLoading ;
  const factory RelativesTypeListState.loadSuccess (RelativeListEntities relativeListEntities ) = _RelativesTypeListStateLoadSuccess ;
}


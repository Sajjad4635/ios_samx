

part of 'delete_relative_bloc.dart';


@freezed
class DeleteRelativeState with _$DeleteRelativeState {
  const factory DeleteRelativeState.initial() = _DeleteRelativeStateInitial ;
  const factory DeleteRelativeState.loadFailure(Failure failure ) = _DeleteRelativeStateLoadFailure;
  const factory DeleteRelativeState.loading() = DeleteRelativeStateLoading ;
  const factory DeleteRelativeState.loadSuccess (DeleteRelativeEntities deleteRelativeEntities ) = _DeleteRelativeStateLoadSuccess ;
}


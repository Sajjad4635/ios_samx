

part of 'edit_relative_bloc.dart';


@freezed
class EditRelativeState with _$EditRelativeState {
  const factory EditRelativeState.initial() = _EditRelativeStateInitial ;
  const factory EditRelativeState.loadFailure(Failure failure ) = _EditRelativeStateLoadFailure;
  const factory EditRelativeState.loading() = EditRelativeStateLoading ;
  const factory EditRelativeState.loadSuccess (EditRelativeEntities editRelativeEntities ) = _EditRelativeStateLoadSuccess ;
}


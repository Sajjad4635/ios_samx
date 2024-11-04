

part of 'add_relative_bloc.dart';


@freezed
class AddRelativeState with _$AddRelativeState {
  const factory AddRelativeState.initial() = _AddRelativeStateInitial ;
  const factory AddRelativeState.loadFailure(Failure failure ) = _AddRelativeStateLoadFailure;
  const factory AddRelativeState.loading() = AddRelativeStateLoading ;
  const factory AddRelativeState.loadSuccess (AddRelativeEntities relativeListEntities ) = _AddRelativeStateLoadSuccess ;
}


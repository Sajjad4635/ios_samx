part of 'add_card_bloc.dart';

@freezed
class AddCardState with _$AddCardState {
  const factory AddCardState.initial() = _AddCardStateInitial ;
  const factory AddCardState.loadFailure(Failure failure ) = _AddCardStateLoadFailure;
  const factory AddCardState.loading() = AddCardStateLoading ;
  const factory AddCardState.loadSuccess (AddCardEntities addCardEntities ) = _AddCardStateLoadSuccess ;
}




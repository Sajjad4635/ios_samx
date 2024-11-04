part of 'remove_card_bloc.dart';

@freezed
class RemoveCardState with _$RemoveCardState {
  const factory RemoveCardState.initial() = _RemoveCardStateInitial ;
  const factory RemoveCardState.loadFailure(Failure failure ) = _RemoveCardStateLoadFailure;
  const factory RemoveCardState.loading() = RemoveCardStateLoading ;
  const factory RemoveCardState.loadSuccess (RemoveCardEntities removeCardEntities ) = _RemoveCardStateLoadSuccess ;
}




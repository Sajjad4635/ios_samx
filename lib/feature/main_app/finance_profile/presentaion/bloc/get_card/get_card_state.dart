part of 'get_card_bloc.dart';

@freezed
class GetCardState with _$GetCardState {
  const factory GetCardState.initial() = _GetCardStateInitial ;
  const factory GetCardState.loadFailure(Failure failure ) = _GetCardStateLoadFailure;
  const factory GetCardState.loading() = GetCardStateLoading ;
  const factory GetCardState.loadSuccess (GetCardEntities getCardEntities ) = _GetCardStateLoadSuccess ;
}




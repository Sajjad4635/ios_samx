part of 'card_default_bloc.dart';

@freezed
class CardDefaultState with _$CardDefaultState {
  const factory CardDefaultState.initial() = _CardDefaultStateInitial ;
  const factory CardDefaultState.loadFailure(Failure failure ) = _CardDefaultStateLoadFailure;
  const factory CardDefaultState.loading() = CardDefaultStateLoading ;
  const factory CardDefaultState.loadSuccess (CardDefaultEntities cardDefaultEntities ) = _CardDefaultStateLoadSuccess ;
}




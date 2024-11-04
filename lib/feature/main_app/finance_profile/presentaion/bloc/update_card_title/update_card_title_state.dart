part of 'update_card_title_bloc.dart';


@freezed
class UpdateCardTitleState with _$UpdateCardTitleState {
  const factory UpdateCardTitleState.initial() = _UpdateCardTitleStateInitial ;
  const factory UpdateCardTitleState.loadFailure(Failure failure ) = _UpdateCardTitleStateLoadFailure;
  const factory UpdateCardTitleState.loading() = UpdateCardTitleStateLoading ;
  const factory UpdateCardTitleState.loadSuccess (UpdateCardTitleEntities updateCardTitleEntities ) = _UpdateCardTitleStateLoadSuccess ;
}




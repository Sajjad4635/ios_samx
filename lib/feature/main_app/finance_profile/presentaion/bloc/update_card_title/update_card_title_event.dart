
part of 'update_card_title_bloc.dart';

@freezed
abstract class UpdateCardTitleEvent with _$UpdateCardTitleEvent {
  const factory UpdateCardTitleEvent.updateCardTitleEventCalled(
      {required UpdateCardTitleParam updateCardTitleParam}) = _UpdateCardTitleEventCalled;
}

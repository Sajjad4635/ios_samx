
part of 'get_card_bloc.dart';

@freezed
abstract class GetCardEvent with _$GetCardEvent {
  const factory GetCardEvent.getCardEventCalled(
      {required NoParams noParams}) = _GetCardEventCalled;
}

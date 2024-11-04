
part of 'remove_card_bloc.dart';

@freezed
abstract class RemoveCardEvent with _$RemoveCardEvent {
  const factory RemoveCardEvent.removeCardEventCalled(
      {required RemoveCardParam removeCardParam}) = _RemoveCardEventCalled;
}

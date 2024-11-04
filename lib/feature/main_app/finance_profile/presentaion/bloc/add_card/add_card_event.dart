part of 'add_card_bloc.dart';



@freezed
abstract class AddCardEvent with _$AddCardEvent {
  const factory AddCardEvent.addCardEventCalled({required AddCardParam addCardParam})  = _AddCardEventCalled;
}
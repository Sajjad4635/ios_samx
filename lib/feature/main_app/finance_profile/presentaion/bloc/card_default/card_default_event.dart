part of 'card_default_bloc.dart';

@freezed
abstract class CardDefaultEvent with _$CardDefaultEvent {
  const factory CardDefaultEvent.cardDefaultEventCalled(
      {required CardDefaultParam cardDefaultParam}) = _CardDefaultEventCalled;
}

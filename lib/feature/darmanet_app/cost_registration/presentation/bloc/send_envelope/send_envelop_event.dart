part of 'send_envelop_bloc.dart';

@freezed
abstract class SendEnvelopeEvent with _$SendEnvelopeEvent {
  const factory SendEnvelopeEvent.sendEnvelopeEventCalled({required SendEnvelopeParam param}) =
      _SendEnvelopeEventCalled;
}
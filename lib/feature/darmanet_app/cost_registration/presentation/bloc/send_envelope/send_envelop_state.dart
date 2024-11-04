part of 'send_envelop_bloc.dart';

@freezed
class SendEnvelopeState with _$SendEnvelopeState {
  const factory SendEnvelopeState.initial() = _SendEnvelopeStateInitial;
  const factory SendEnvelopeState.loadFailure(Failure failure) = _SendEnvelopeStateLoadFailure;
  const factory SendEnvelopeState.loading() = SendEnvelopeStateLoading;
  const factory SendEnvelopeState.loadSuccess(SendEnvelopeEntities sendEnvelopeEntities) =
      _SendEnvelopeStateLoadSuccess;
}
part of 'get_envelope_send_info_bloc.dart';

@freezed
abstract class GetEnvelopeSendInfoEvent with _$GetEnvelopeSendInfoEvent {
  const factory GetEnvelopeSendInfoEvent.getEnvelopeSendInfoEventCalled({required GetEnvelopeSendInfoParam param}) =
      _GetEnvelopeSendInfoEventCalled;
}
part of 'get_envelope_send_info_bloc.dart';

@freezed
class GetEnvelopeSendInfoState with _$GetEnvelopeSendInfoState {
  const factory GetEnvelopeSendInfoState.initial() = _GetEnvelopeSendInfoStateInitial;
  const factory GetEnvelopeSendInfoState.loadFailure(Failure failure) = _GetEnvelopeSendInfoStateLoadFailure;
  const factory GetEnvelopeSendInfoState.loading() = GetEnvelopeSendInfoStateLoading;
  const factory GetEnvelopeSendInfoState.loadSuccess(GetEnvelopeSendInfoEntities getSendEnvelopeSendInfoEntities) =
      _GetEnvelopeSendInfoStateLoadSuccess;
}
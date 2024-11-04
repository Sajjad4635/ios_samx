part of 'submit_discontent_bloc.dart';

@freezed
class SubmitDiscontentState with _$SubmitDiscontentState {
  const factory SubmitDiscontentState.initial() = _SubmitDiscontentStateInitial;
  const factory SubmitDiscontentState.loadFailure(Failure failure) = _SubmitDiscontentStateLoadFailure;
  const factory SubmitDiscontentState.loading() = SubmitDiscontentStateLoading;
  const factory SubmitDiscontentState.loadSuccess(SubmitDiscontentEntity submitDiscontentEntity) = _SubmitDiscontentStateLoadSuccess ;


}

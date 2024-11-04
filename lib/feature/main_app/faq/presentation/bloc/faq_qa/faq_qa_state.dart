part of 'faq_qa_bloc.dart';

@freezed
class FaqQaState with _$FaqQaState {
  const factory FaqQaState.initial() = _FaqQaStateInitial;
  const factory FaqQaState.loadFailure(Failure failure) = _FaqQaStateLoadFailure;
  const factory FaqQaState.loading() = FaqQaStateLoading ;
  const factory FaqQaState.loadSuccess(FaqEntity faqEntity) = _FaqQaStateLoadSuccess ;
}




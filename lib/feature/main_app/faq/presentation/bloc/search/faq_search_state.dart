part of 'faq_search_bloc.dart';

@freezed
class FaqSearchState with _$FaqSearchState {
  const factory FaqSearchState.initial() = _FaqSearchStateInitial;
  const factory FaqSearchState.loading() =  FaqSearchStateLoading;
  const factory FaqSearchState.loadFailure(Failure failure) = _FaqSearchStateLoadFailure;
  const factory FaqSearchState.loadSuccess(FaqEntity faqEntity) = _FaqSearchStateLoadSuccess;
}

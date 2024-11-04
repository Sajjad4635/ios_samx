part of 'faq_search_bloc.dart';

@freezed
class FaqSearchEvent with _$FaqSearchEvent {
  const factory FaqSearchEvent.faqSearchEventCalled(FaqSearchParams params) = _FaqSearchEventCalled;
}

part of 'saved_money_bloc.dart';

@freezed
class SavedMoneyState with _$SavedMoneyState {
  const factory SavedMoneyState.initial() = _SavedMoneyStateInitial;
  const factory SavedMoneyState.loadFailure(Failure failure) = _SavedMoneyStateLoadFailure;
  const factory SavedMoneyState.loading() = SavedMoneyStateLoading;
  const factory SavedMoneyState.loadSuccess(SavedMoneyResponseEntities savedMoneyResponseEntities) =
      _SavedMoneyStateLoadSuccess;
}

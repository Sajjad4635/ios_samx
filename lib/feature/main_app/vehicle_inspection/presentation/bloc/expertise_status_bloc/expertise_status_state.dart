part of 'expertise_status_bloc.dart';

@freezed

class ExpertiseStatusState with _$ExpertiseStatusState {
  const factory ExpertiseStatusState.initial() = _ExpertiseStatusStateInitial ;
  const factory ExpertiseStatusState.loadFailure(Failure failure ) = _ExpertiseStatusStateLoadFailure;
  const factory ExpertiseStatusState.loading() = ExpertiseStatusStateLoading ;
  const factory ExpertiseStatusState.loadSuccess (ExpertiseStatusEntities expertiseStatusEntities) = _ExpertiseStatusStateLoadSuccess ;
}
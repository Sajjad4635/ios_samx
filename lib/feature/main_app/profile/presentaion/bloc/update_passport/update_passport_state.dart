part of 'update_passport_bloc.dart';

@freezed

class UpdatePassportState with _$UpdatePassportState {
  const factory UpdatePassportState.initial() = _UpdatePassportStateInitial;
  const factory UpdatePassportState.loading() = UpdatePassportStateLoading ;
  const factory UpdatePassportState.loadSuccess(UpdatePassportEntities updatePassportEntities) = _UpdatePassportStateLoadSuccess ;
  const factory UpdatePassportState.loadFailure(Failure failure) = _UpdatePassportStateLoadFailure ;
}
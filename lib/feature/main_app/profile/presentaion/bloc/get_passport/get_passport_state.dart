part of 'get_passport_bloc.dart' ;

@freezed

class GetPassportState with _$GetPassportState {
  const factory GetPassportState.initial() = _GetPassportStateInitial;
  const factory GetPassportState.loading() = GetPassportStateLoading ;
  const factory GetPassportState.loadSuccess(GetPassportEntities getPassportEntities) = _GetPassportStateLoadSuccess ;
  const factory GetPassportState.loadFailure(Failure failure) = _GetPassportStateLoadFailure ;
}


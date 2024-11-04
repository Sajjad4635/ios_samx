part of 'zipcode_detail_bloc.dart';

@freezed

class ZipcodeDetailState with _$ZipcodeDetailState{
  const factory ZipcodeDetailState.initial() = _ZipcodeDetailStateInitial;
  const factory ZipcodeDetailState.loading() = ZipcodeDetailStateLoading ;
  const factory ZipcodeDetailState.loadSuccess(ZipcodeEntities zipcodeEntities) = _ZipcodeDetailStateLoadSuccess ;
  const factory ZipcodeDetailState.loadFailure(Failure failure) = _ZipcodeDetailStateLoadFailure ;
}


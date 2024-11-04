part of 'zipcode_update_bloc.dart';

@freezed
class ZipcodeUpdateState with _$ZipcodeUpdateState{
  const factory ZipcodeUpdateState.initial() = _ZipcodeUpdateStateInitial;
  const factory ZipcodeUpdateState.loading() = ZipcodeUpdateStateLoading ;
  const factory ZipcodeUpdateState.loadSuccess(ZipcodeUpdateEntities zipcodeUpdateEntities) = _ZipcodeUpdateStateLoadSuccess ;
  const factory ZipcodeUpdateState.loadFailure(Failure failure) = _ZipcodeUpdateStateLoadFailure ;
}
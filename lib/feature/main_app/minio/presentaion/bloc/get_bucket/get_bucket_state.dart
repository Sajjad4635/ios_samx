part of 'get_bucket_bloc.dart';

@freezed
class GetBucketState with _$GetBucketState {
  const factory GetBucketState.initial() = _GetBucketStateInitial;
  const factory GetBucketState.loadFailure(Failure failure) =_GetBucketStateLoadFailure;
  const factory GetBucketState.loading() = GetBucketStateLoading;
  const factory GetBucketState.loadSuccess(GetBucketEntities getBucketEntities) = _GetBucketStateLoadSuccess;
}

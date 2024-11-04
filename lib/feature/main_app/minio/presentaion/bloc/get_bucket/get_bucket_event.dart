
part of 'get_bucket_bloc.dart';

@freezed
abstract class GetBucketEvent with _$GetBucketEvent {
  const factory GetBucketEvent.getBucketEventCalled( GetBucketParam getBucketParam) = _GetBucketEventCalled;
}


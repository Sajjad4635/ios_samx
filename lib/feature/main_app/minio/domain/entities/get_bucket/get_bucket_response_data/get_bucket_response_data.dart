import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'bucket_response/bucket_response.dart';

part 'get_bucket_response_data.g.dart';

@JsonSerializable(createToJson: false)
class GetBucketResponseData extends Equatable {
  final dynamic owner;
  final List<BucketResponse> buckets;

  const GetBucketResponseData(this.owner, {required this.buckets});

  factory GetBucketResponseData.fromJson(Map<String, dynamic> json) =>
      _$GetBucketResponseDataFromJson(json);

  @override
  List<Object?> get props => [buckets];


}

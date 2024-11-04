// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_bucket_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetBucketResponseData _$GetBucketResponseDataFromJson(
        Map<String, dynamic> json) =>
    GetBucketResponseData(
      json['owner'],
      buckets: (json['buckets'] as List<dynamic>)
          .map((e) => BucketResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

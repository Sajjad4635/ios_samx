import 'package:equatable/equatable.dart';
import '../../../../../../core/dio/dio_response_samx.dart';
import 'get_bucket_response_data/get_bucket_response_data.dart';

class GetBucketEntities extends Equatable {
  final DioResponseSamX dioResponseSamX ;
  late final GetBucketResponseData getBucketResponseData;

  GetBucketEntities(this.dioResponseSamX) {
    getBucketResponseData = GetBucketResponseData.fromJson(dioResponseSamX.data);
  }

  @override
  List<Object?> get props => [getBucketResponseData];
}

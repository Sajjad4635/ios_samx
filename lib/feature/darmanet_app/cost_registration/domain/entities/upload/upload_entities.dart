import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/upload/upload_response_data/upload_response_data.dart';
import 'package:equatable/equatable.dart';

class UploadEntities extends Equatable {
   final  UploadResponseData uploadResponseData;


  const UploadEntities({required this.uploadResponseData}) ;

  @override
  List<Object?> get props => [uploadResponseData];
}

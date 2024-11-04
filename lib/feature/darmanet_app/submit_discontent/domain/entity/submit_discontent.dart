import 'package:ios_samx/core/dio/dio_response.dart';
import 'package:ios_samx/feature/darmanet_app/submit_discontent/domain/entity/response_data/submit_discontent_response_data.dart';
import 'package:equatable/equatable.dart';

class SubmitDiscontentEntity extends Equatable{
  final DioResponse dioResponse ;
  late final SubmitDiscontentResponseData responseData ;

   SubmitDiscontentEntity({required this.dioResponse}){
    responseData = SubmitDiscontentResponseData.fromJson(dioResponse.data);
  }

  @override
  List<Object?> get props => [
    dioResponse,
    responseData,
  ];
}